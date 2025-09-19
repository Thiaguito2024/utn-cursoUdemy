/*  Una empresa permite el ingreso de personas mayores de 18 años. Se debe mostrar un mensaje usando operador ternario según la edad ingresada.
*/

let edad = Number(prompt("Ingrese su edad: "))

let mensaje = (edad >= 18) ? "Es mayor de edad, pasa" : "Es menor, no puede pasar";
console.log(mensaje);
