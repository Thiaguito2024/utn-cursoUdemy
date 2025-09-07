EJERCICIOS DE DDL: 
1)Crear una vista formada por los números de proveedores y números de productos situados en diferentes localidades. 
	create view vistas_proveedores_productos_diferente_localidad as 
	select 
		proveedor.NUMERO,
		producto.PNRO
	from 
		proveedores proveedor
	join
		productos producto
	on
		proveedor.LOCALIDAD <> producto.LOCALIDAD;

2)Agregar la columna IMPORTADOR a la tabla PRODUCTOS. 
	alter table productos add IMPORTADOR varchar(50)
	
3)Crear una vista formada por los registros de los proveedores que viven en Wilde. 
	create view registro_proveedores_wilde as
	select 
		proveedor.LOCALIDAD 
	from 
		proveedores proveedor
	where 
		proveedor.LOCALIDAD = "Wilde";

4)Crear las tablas DEPARTAMENTOS y EMPLEADOS con sus relaciones, y las tablas PACIENTES y MEDICAMENTOS con sus relaciones.
 DEPARTAMENTOS y EMPLEADOS:
 create table departamentos (
numero_depto int not null,
nombre_depto varchar(50) not null);

insert into departamentos values 
(1, "Marketing"),
(2, "Recursos Humanos"),
(3, "Cobranzas"),
(4, "Administracion");

create table empleados(
nombre_empleado varchar(50),
departamento_id int not null,
dni int not null,
salario int not null, 
fecha_contratacion varchar(50) not null);
 
  
insert into empleados values
("Thiago", 1, 123, 50000, "19/06/2000"),
("Sol", 4, 234, 50000, "20/03/2000");

alter table empleados
add constraint fk_empleados_departamento
foreign key (departamento_id) references departamentos(numero_depto); 

alter table departamentos 
add constraint pk_departamentos primary key (numero_depto);

PACIENTES y MEDICAMENTOS:
create table paciente (
dni int not null primary key,
nombre varchar(50) not null,
apellido varchar(50) not null,
altura int not null,
tipo_de_sangre varchar(50) not null);

create table medicamentos (
id_medicamentos int not null primary key,
nombre_medicamentos varchar(50) not null,
fecha_vencimiento date not null,
stock int not null); 

insert into paciente values
(123, 'Thiago', 'La Grotta', 170, 'B+'),
(234, 'Alberto', 'Emanuel', 170, 'A+');

insert into medicamentos values
(1, 'Actron', '2026-12-30', 100),
(2, 'Alikal', '2030-02-20', 50);

create table paciente_medicamento(
dni int not null, 
id_medicamento int not null, 
primary key (dni, id_medicamento), 
constraint fk_paciente foreign key (dni) references paciente(dni),
constraint fk_medicamento foreign key (id_medicamento) references medicamentos(id_medicamentos));
 
EJERCICIOS DE DML:

A) Realizar las siguientes proposiciones SQL con la siguiente estructura:
PROVEEDORES (NUMERO, NOMBRE, DOMICILIO, LOCALIDAD)
PRODUCTOS (PNRO, PNOMBRE, PRECIO, TAMAÑO, LOCALIDAD)
PROV_PROD (NUMERO, PNRO, CANTIDAD)

1) Obtener los detalles completos de todos los productos.
	select * from productos;
2) Obtener los detalles completos de todos los proveedores de Palermo.
	select * 
	from proveedores 
	where proveedores.LOCALIDAD = "Palermo";
3) Obtener todos los envíos en los cuales la cantidad está entre 200 y 300 inclusive.
	alter table proveedores 
	add envios int not null; 

	insert into proveedores values 
	(250, 'Proveedor 1', 'Calle Falsa 1', 'Ciudad A', 250),
	(370, 'Proveedor 2', 'Calle Falsa 2', 'Ciudad B', 370),
	(290, 'Proveedor 3', 'Calle Falsa 3', 'Ciudad C', 290),
	(300, 'Proveedor 4', 'Calle Falsa 4', 'Ciudad D', 300),
	(100, 'Proveedor 5', 'Calle Falsa 5', 'Ciudad E', 100);
	
	select * 
	from proveedores
	where envios >200 and envios <=300;
4) Obtener los números de los productos enviados por algún proveedor de Caballito.	
	create view prod_enviados_desde_caballito as 
	select 
		productos.PNRO,
		proveedores_caballito.LOCALIDAD
	from 
		proveedores proveedores_caballito
	join 
		productos productos
	on 
		productos.LOCALIDAD = proveedores_caballito.LOCALIDAD
	where
		proveedores_caballito.LOCALIDAD = "Caballito";	

5) Obtener la cantidad del producto 10 enviado por el proveedor 10.
	select count(*)
	from Prov_Prod
	where PNRO = 10 and NUMERO = 10;
	
6) Obtener los números de los productos y localidades en los cuales la segunda letra del nombre de la localidad sea A.
	select PNRO, LOCALIDAD
	from productos 
	where LOCALIDAD like '_A%';

7) Obtener los precios de los productos enviados por el proveedor 2.
	select productos.PRECIO
	from Prov_Prod
	join productos
	on Prov_Prod.PNRO = productos.PNRO
	where Prov_Prod.NUMERO = 2;
	
8) Construir una lista de todas las localidades diferentes en las cuales hay proveedores registrados.
	select distinct LOCALIDAD
	from proveedores;	
	
9) Obtener el código y nombre del producto que tenga el precio más alto.
	select PNRO, PNOMBRE, PRECIO 
	from productos
	where PRECIO = (select max(PRECIO) from productos);
	
10) Cambiar a “Pequeño” el tamaño de todos los productos medianos.
	update productos
	set TAMAÑO = "Pequeño"
	where productos.TAMAÑO = "Mediano";

11) Eliminar todos los productos para los cuales no haya envíos.
	alter table productos 
	add envios int; 

	delete from productos
	where envios = 0;
	REHACER
	
12) Registrar un nuevo proveedor. Su nombre es "Proveedor K", el domicilio es "calle falsa 123",
	y la localidad es Avellaneda. Luego comprobar que exista el registro nuevo.
	insert into proveedores values
	(5, 'Proveedor K', 'calle falsa 123', 'Avellaneda', 0);

---------------------------

B) Dadas las siguientes tablas:
CLIENTES (código_cliente, nombre, domicilio, provincia)
PRODUCTOS (código_producto, nombre_producto)
ITEM_VENTAS (número_factura, coódigo_producto, cantidad, precio)
VENTAS (número_factura, código_cliente, fecha)

create table clientes (
codigo_cliente int,
nombre varchar(50),
domicilio varchar(50),
provincia varchar(50));

create table productos2 (
codigo_producto int auto_increment primary	key,
nombre_producto varchar(50));

create table item_ventas (
numero_factura int auto_increment primary key,
codigo_producto int,
cantidad int, 
precio int);

create table ventas (
numero_factura int,
codigo_cliente int, 
fecha date);

Resolver las siguientes consultas:
1. Obtener la cantidad de unidades máxima.
	select max(cantidad)
	from item_ventas;
	
2. Obtener la cantidad total de unidades vendidas del producto c.
	select sum(item_ventas.cantidad) AS total_unidades_producto_c
	from item_ventas
	join productos2
	on item_ventas.codigo_producto = productos2.codigo_producto
	where productos2.nombre_producto = "c";
	
3. Cantidad de unidades vendidas por producto, indicando la descripción del producto, ordenado de mayor a menor por las cantidades vendidas.
	select productos2.nombre_producto, SUM(item_ventas.cantidad) as total_unidades_vendidas
	from item_ventas
	join productos2
	on item_ventas.codigo_producto = productos2.codigo_producto
	group by productos2.nombre_producto
	order by total_unidades_vendidas desc;
	
4. Cantidad de unidades vendidas por producto, indicando la descripción del producto, ordenado alfabéticamente por nombre 
	de producto para los productos que vendieron más de 30 unidades.
	select productos2.nombre_producto, SUM(item_ventas.cantidad) as total_unidades_vendidas
	from item_ventas
	join productos2
	on item_ventas.codigo_producto = productos2.codigo_producto
	group by productos2.nombre_producto
	having sum(item_ventas.cantidad) > 30
	order by productos2.nombre_producto asc;
	
5. Obtener cuantas compras (1 factura = 1 compra) realizó cada cliente indicando el código y nombre del cliente ordenado de mayor a menor.
	select clientes.codigo_cliente, clientes.nombre, count(ventas.numero_factura) as cantidad_compras
	from clientes
	join ventas
	on clientes.codigo_cliente = ventas.codigo_cliente
	group by clientes.codigo_cliente, clientes.nombre
	order by cantidad_compras desc;
	
6. Promedio de unidades vendidas por producto, indicando el código del producto para el cliente 1.
	select item_ventas.codigo_producto, avg(item_ventas.cantidad) as promedio_unidades_vendidas
	from item_ventas
	join ventas 
	on item_ventas.numero_factura = ventas.numero_factura
	where ventas.codigo_cliente = 1
	group by item_ventas.codigo_producto;
---------------------------

C) Se tiene la siguiente base de datos relacional:
Documentos (cod_documento, descripción)
Oficinas (cod_oficina, codigo_director, descripcion)
Empleados (cod_empleado, apellido, nombre, fecha_nacimiento, num_doc, cod_jefe, cod_oficina, cod_documento)
Datos_contratos (cod_empleado, fecha_contrato, cuota, ventas)
Fabricantes (cod_fabricante, razón_social)
Listas (cod_lista, descripción, ganancia)
Productos (cod_producto, descripcion, precio, cantidad_stock, punto_reposición, cod_fabricante)
Precios (cod_producto, cod_lista, precio)
Clientes (cod_cliente, cod_lista, razón_social)
Pedidos (cod_pedido, fecha_pedido, cod_empleado, cod_cliente)
Detalle_pedidos (cod_pedido, numero_linea, cod_producto, cantidad)

Resolver las siguientes consultas utilizando sentencias SQL:
**Consultas simples (una sola tabla)**
1) Obtener una lista con los nombres de las distintas oficinas de la empresa.
	select distinct descripcion
	from Oficinas;
	
2) Obtener una lista de todos los productos indicando descripción del producto, su precio de costo y su precio de costo IVA incluído
 (tomar el IVA como 21%).
	select descripcion, precio as precio_costo, precio * 1.21 as precio_costo_con_iva
	from productos;
	
3) Obtener una lista indicando para cada empleado apellido, nombre, fecha de cumpleaños y edad.
4) Listar todos los empleados que tiene un jefe asignado.
	select *
	from empleados
	where cod_jefe is not null;

5) Listar los empleados de nombre “María” ordenado por apellido.
	select *
	from empleados
	where nombre = 'maría'
	order by apellido asc;

6) Listar los clientes cuya razón social comience con “L” ordenado por código de cliente.
	select *
	from clientes
	where razón_social like 'l%'
	order by cod_cliente asc;
	
7) Listar toda la información de los pedidos de Marzo ordenado por fecha de pedido.
	select *
	from pedidos
	where strftime('%m', fecha_pedido) = '03'
	order by fecha_pedido asc;
	
8) Listar las oficinas que no tienen asignado director.
	select *
	from oficinas
	where codigo_director = null;
	
9) Listar los 4 productos de menor precio de costo.
	select *
	from productos
	order by precio asc
	limit 4;
	
10) Listar los códigos de empleados de los tres que tengan la mayor cuota.
	select cod_empleado
	from datos_contratos
	order by cuota desc
	limit 3;
	
**Consultas multitablas**
1) De cada producto listar descripción, razón social del fabricante y stock ordenado por razón social y descripción.
	select productos.descripcion, fabricantes.razón_social, productos.cantidad_stock
	from productos
	join fabricantes on productos.cod_fabricante = fabricantes.cod_fabricante
	order by fabricantes.razón_social asc, productos.descripcion asc;
	
2) De cada pedido listar código de pedido, fecha de pedido, apellido del empleado y razón social del cliente.
	select pedidos.cod_pedido, pedidos.fecha_pedido, empleados.apellido as apellido_empleado, clientes.razón_social as razón_social_cliente
	from pedidos
	join empleados on pedidos.cod_empleado = empleados.cod_empleado
	join clientes on pedidos.cod_cliente = clientes.cod_cliente;
	
3) Listar por cada empleado apellido, cuota asignada, oficina a la que pertenece ordenado en forma descendente por cuota.
	select empleados.apellido, datos_contratos.cuota, oficinas.descripcion as oficina
	from empleados
	join datos_contratos on empleados.cod_empleado = datos_contratos.cod_empleado
	join oficinas on empleados.cod_oficina = oficinas.cod_oficina
	order by datos_contratos.cuota desc;
	
4) Listar sin repetir la razón social de todos aquellos clientes que hicieron pedidos en Abril.
	select distinct clientes.razón_social
	from clientes
	join pedidos on clientes.cod_cliente = pedidos.cod_cliente
	where strftime('%m', pedidos.fecha_pedido) = '04';
	
5) Listar sin repetir los productos que fueron pedidos en Marzo.
	select distinct productos.descripcion
	from productos
	join detalle_pedidos on productos.cod_producto = detalle_pedidos.cod_producto
	join pedidos on detalle_pedidos.cod_pedido = pedidos.cod_pedido
	where strftime('%m', pedidos.fecha_pedido) = '03';
	
6) Listar aquellos empleados que están contratados por más de 10 años ordenado por cantidad de años en forma descendente.
	select distinct productos.descripcion
	from productos
	join detalle_pedidos on productos.cod_producto = detalle_pedidos.cod_producto
	join pedidos on detalle_pedidos.cod_pedido = pedidos.cod_pedido
	where strftime('%m', pedidos.fecha_pedido) = '03';

7) Obtener una lista de los clientes mayoristas ordenada por razón social.
	select razón_social
	from clientes
	where tipo_cliente = 'mayorista'
	order by razón_social asc;

8) Obtener una lista sin repetir que indique qué productos compró cada cliente, ordenada por razón social y descripción.
	select distinct clientes.razón_social as cliente, productos.descripcion as producto
	from clientes
	join pedidos 
	on clientes.cod_cliente = pedidos.cod_cliente
	join detalle_pedidos 
	on pedidos.cod_pedido = detalle_pedidos.cod_pedido
	join productos 
	on detalle_pedidos.cod_producto = productos.cod_producto
	order by clientes.razón_social asc, productos.descripcion asc;

9) Obtener una lista con la descripción de aquellos productos cuyo stock está por debajo del punto de reposición indicando cantidad a comprar 
	y razón social del fabricante ordenada por razón social y descripción.
	 select productos.descripcion as producto, (productos.punto_reposición - productos.cantidad_stock) as cantidad_a_comprar, fabricantes.razón_social as fabricante
	from productos
	join fabricantes on productos.cod_fabricante = fabricantes.cod_fabricante
	where productos.cantidad_stock < productos.punto_reposición
	order by fabricantes.razón_social asc, productos.descripcion asc;
	
10) Listar aquellos empleados cuya cuota es menor a 50000 o mayor a 100000.
	select empleados.apellido, empleados.nombre, datos_contratos.cuota
	from empleados
	join datos_contratos 
	on empleados.cod_empleado = datos_contratos.cod_empleado
	where datos_contratos.cuota < 50000 or datos_contratos.cuota > 100000;

---------------------------

Ejercicios Constraints:
1) Una base de datos hospitalaria contiene las siguientes relaciones:
PACIENTES (CODIGO-PAC, APELLIDO-PAC, EDAD)
primary key(CODIGO-PAC)
No tiene foreign key
MEDICAMENTOS (CODIGO-MED, PRECIO-UNITARIO)
primary key(CODIGO-MED)
No tiene foreign key

GASTOS (CODIGO-PAC, CODIGO-MED)
primary key(CODIGO-PAC, CODIGO-MED) 
foreign key(CODIGO-PAC, CODIGO-MED) -> ambas son foreign key dado que ambas referencian columnas de otras tablas
Indicar las claves primarias y claves ajenas de cada relación.

2) Dadas las siguientes relaciones:
CURSOS (NUMCURSO, TITULO)
primary key(NUMCURSO)

OFRECIMIENTOS (NUMCURSO, NUMOFR, FECHA, AULA)
primary key (NUMOFR)
foreign key(NUMCURSO)

PROFESORES (NUMCURSO, NUMOFR, NUMEMP)
primary key(NUMCURSO, NUMOFR, NUMEMP)
foreign key(NUMCURSO, NUMOFR)

ESTUDIANTES (NUMCURSO, NUMOFR, NUMEST, CALIFICACION)
primary key(NUMEST)
foreign key(NUMCURSO, NUMOFR)

EMPLEADOS (NUMEMP, EMPLE-NOMBRE, PUESTO)
primary key(NUMEMP)

Indicar las claves primarias y claves ajenas de cada relación.

3) Dadas las siguientes tablas:
Oficinas (cod_ofic, descripción)
Empleados (cod_emp, nombre, apellido, tipo_doc, num_doc, categoria, cod_ofic)
Crear las siguientes reglas de integridad:
• La columna cod_emp debe ser clave primaria.
0	16	10:15:44	insert into empleados values 
 (1, 'Ana', 'Pérez', 'DNI', 123, 'Senior', 1),
 (1, 'Luis', 'Gómez', 'DNI', 456, 'Junior', 1)	Error Code: 3819. Check constraint 'cod_emp_min_max' is violated.	0.000 sec
 
• La columna cod_emp debe tener valores entre 100 y 1000.
0	19	10:20:32	insert into empleados values
 (99, 'Ana', 'García', 'DNI', 111, 'Senior', 1)	Error Code: 3819. Check constraint 'cod_emp_min_max' is violated.	0.000 sec
 
• Las columnas tipo_doc y num_doc deben contener valores no repetidos (únicos).
 0	26	10:27:15	insert into empleados values 
 (101, 'Lucas', 'Paz', 'DNI', 222, 'Junior', 1)	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails
 (`constraints`.`empleados`, CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`cod_oficina`) REFERENCES `oficinas` (`cod_oficina`))	0.032 sec
 
• La columna Categoria debe contener algunos de los siguientes valores: Senior, Semi Senior, Junior.
0	17	10:16:56	insert into empleados values 
 (2, 'Sofía', 'Martínez', 'DNI', 789, 'Experto', 1)	Error Code: 3819. Check constraint 'categoria_valida' is violated.	0.000 sec
 
• La columna cod_ofic debe tener valores que existan en la tabla Oficinas.
0	18	10:17:38	insert into empleados values
 (3, 'Carlos', 'López', 'DNI', 999, 'Junior', 999)	Error Code: 3819. Check constraint 'cod_emp_min_max' is violated.	0.000 sec

Intentar insertar registros que rompan con estas reglas y visualizar lo que sucede. Copiar en comentarios los errores. 

—----------------------------
Ejercicios Catálogo 
1) ¿Cuáles tablas contienen la columna LOCALIDAD? 
	select table_name
	from information_schema.columns
	where column_name = 'LOCALIDAD'
	and table_schema = 'ejemplo';
		
2) ¿Cuántas columnas tiene la tabla PRODUCTOS?
	select count(*)
	from information_schema.columns
	where table_name = 'PRODUCTOS'
	and table_schema = 'ejemplo';

3) Obtener una lista de todos los usuarios dueños de por lo menos una tabla, junto con el número de
tablas que le pertenecen a cada uno.

4) Obtener una lista de los nombres de todas las tablas que tienen por lo menos un índice.
	select distinct table_name
	from information_schema.statistics
	where table_schema = 'ejemplo';
