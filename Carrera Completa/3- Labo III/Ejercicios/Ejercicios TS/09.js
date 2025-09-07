"use strict";
/**Realizar una función que solicite (por medio de un parámetro) un número. Si el número
es positivo, se mostrará el factorial de ese número, caso contrario se mostrará el cubo de
dicho número.
Nota: Reutilizar la función que determina el factorial de un número y la que calcula el
cubo de un número. */
function Ejercicio_09_Factorial(numero) {
    var resultado = 1;
    for (var i = 1; i <= numero; i++) {
        resultado = resultado * i;
    }
    return resultado;
}
function Ejercicio_09_Cubo(numero) {
    return numero * numero;
}
function Ejercicio_09(numero) {
    if (numero < 0) {
        console.log("El cubo de " + numero + " es: " + Ejercicio_09_Cubo(numero));
    }
    else {
        console.log("El factorial de " + numero + " es: " + Ejercicio_09_Factorial(numero));
    }
}
Ejercicio_09(-1);
Ejercicio_09(0);
Ejercicio_09(5);
Ejercicio_09(-58);
//# sourceMappingURL=09.js.map