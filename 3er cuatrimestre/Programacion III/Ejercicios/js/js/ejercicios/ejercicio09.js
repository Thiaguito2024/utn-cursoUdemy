/* 
simular un sistema de compra de cafeteras de un usuario y calcular un descuento según su edad y si tiene premium. Puede comprar hasta 4 cafeteras. Precio base $66400 c/u

Si tiene menos de 18 tendrá un 25% de descuento
Si tiene menos de 30 tendrá un 15% de descuento
si tiene premium tiene un 10% de descuento adicional

el sistema debe mostrar:
    nombre, edad, membresia.
    1. El precio total sin descuento.
    2. El monto total del descuento aplicado.
    3. El precio final a pagar.
*/

// Precio base
let precio = 66400;

// Pido nombre
let nombre = prompt("Ingrese su nombre: ");

// Pido edad y la valido
let edad = Number(prompt("Ingrese su edad: "));

// Pregunto por la membresia 
let preguntaMembresia = prompt("Tiene membresia? ");
let valorMembresia = (preguntaMembresia == "si") ? true : false; 

// Dependiendo la edad el descuento
let descuento = (edad < 18) ?  0.25: (edad < 30) ? 0.15 : 0;

// Se le suma si tiene membresia
descuento += valorMembresia ? 0.10 : 0; 

// Aplico descuento
let precioFinal = precio * (1 - descuento);

// Asigno un valor para mostrar en la "Factura" 
let membresia = (valorMembresia) ? "Si" : "No"; 

// Pongo la primer letra en mayuscula 
if (nombre) {
    // Separo la primer letra del nombre y la paso a mayuscula 
    nombre = nombre[0].toUpperCase() + nombre.slice(1).toLowerCase();
    // Y con slice(1) agarro el resto del string desde la pos 1 en adelante
}

console.log(
    "Comprador: " + nombre + 
    "\nEdad: " + edad +  
    "\nTiene memebresia: " +  membresia + 
    "\nPrecio sin descuento: " + precio + 
    "\nDescuento: " + descuento * 100 + "%" + 
    "\nPrecio a pagar: " + precioFinal);