CREATE DATABASE JOIN_UNION;

USE JOIN_UNION;

CREATE TABLE departamentos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE empleados (
    id INT,
    nombre VARCHAR(50) NOT NULL,
    departamento_id INT,
    salario DECIMAL(10, 2),
    fecha_contratacion DATE
);

INSERT INTO departamentos (id,nombre) VALUES
(1,'Ventas'),
(2,'Marketing'),
(3,'Desarrollo'),
(4,'Recursos Humanos'),
(6,'IT');	

INSERT INTO empleados (id,nombre, departamento_id, salario, fecha_contratacion) VALUES
(1,'Ana', 1, 50000, '2020-01-15'),
(2,'Luis', 2, 45000, '2019-03-12'),
(3,'Pedro', 3, 60000, '2021-06-01'),
(4,'María', 4, 55000, '2018-09-23'),
(5,'Jose', null , 60000, '2020-09-23');

-- Ejemplo de INNER JOIN; Este INNER JOIN muestra todos los empleados con su respectivo departamento. 
-- Solo se muestran las filas donde hay coincidencias en ambos lados.

SELECT empleados.nombre AS empleado, departamentos.nombre AS departamento
FROM empleados
INNER JOIN departamentos ON empleados.departamento_id = departamentos.id;

-- Ejemplo de LEFT JOIN; Explicación: Este LEFT JOIN muestra todos los empleados, incluyendo aquellos que no 
-- tienen un departamento asignado. Si no hay coincidencia, el resultado en la columna de departamentos será NULL.

SELECT empleados.nombre AS empleado, departamentos.nombre AS departamento
FROM empleados
LEFT JOIN departamentos ON empleados.departamento_id = departamentos.id;

-- Ejemplo de RIGHT JOIN;Este RIGHT JOIN muestra todos los departamentos, incluyendo aquellos que no tienen 
-- empleados asignados. Si no hay coincidencia, el resultado en la columna de empleados será NULL.

SELECT empleados.nombre AS empleado, departamentos.nombre AS departamento
FROM empleados
RIGHT JOIN departamentos ON empleados.departamento_id = departamentos.id;

-- Ejemplo de FULL OUTER JOIN; Este FULL OUTER JOIN muestra todos los departamentos y empleados, incluyendo aquellos que no tienen 
-- empleados asignados. Si no hay coincidencia, el resultado será NULL. Tener en cuenta que en My SQL, no se puede utilizar
-- la sentencia "FULL OUTER JOIN", es por ello que se debe realizar una combinación entre las sentencias LEFT y RIGHT, y el UNION. 

SELECT empleados.nombre, departamentos.nombre
FROM empleados
LEFT JOIN departamentos ON empleados.departamento_id = departamentos.id

UNION

SELECT empleados.nombre, departamentos.nombre
FROM empleados
RIGHT JOIN departamentos ON empleados.departamento_id = departamentos.id;

-- Script para creacion de tablas y datos para ejemplo de UNION

CREATE TABLE profesores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    materia VARCHAR(50) NOT NULL
);

CREATE TABLE alumnos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    curso VARCHAR(50) NOT NULL
);

INSERT INTO profesores (nombre, materia) VALUES
('Carlos Pérez', 'Matemáticas'),
('María López', 'Física'),
('Juan García', 'Química');

INSERT INTO alumnos (nombre, curso) VALUES
('Lucía Fernández', '1er año'),
('Martín Rodríguez', '2do año'),
('Ana Gómez', '3er año');

-- Unimos los registros de profesores y alumnos, diferenciando su rol
SELECT nombre, materia AS especificacion, 'Profesor' AS rol
FROM profesores

UNION

SELECT nombre, curso AS especificacion, 'Alumno' AS rol
FROM alumnos;

