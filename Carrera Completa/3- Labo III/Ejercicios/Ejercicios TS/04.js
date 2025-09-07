"use strict";
/*4. Realizar una función que reciba un número y que muestre (por consola) un mensaje
como el siguiente:
El número 5 es impar , siendo 5 el número recibido como parámetro.*/
function Ejercicio_04(numero) {
    var par = false;
    var primo = false;
    if (Ejercicio_04_EsPar(numero)) {
        if (Ejercicio_04_EsPrimo(numero)) {
            console.log("El numero " + numero + " es par y primo.");
        }
        else {
            console.log("El numero " + numero + " es par.");
        }
    }
    else if (Ejercicio_04_EsPrimo(numero)) {
        console.log("El numero " + numero + " es primo.");
    }
    else {
        console.log("El numero " + numero + " no es ni par ni primo, no es mas que una decepcion.");
    }
}
function Ejercicio_04_EsPar(numero) {
    var resultado = false;
    if (numero % 2 == 0) {
        resultado = true;
    }
    return resultado;
}
function Ejercicio_04_EsPrimo(numero) {
    var resultado = false;
    var i = 2;
    for (; i < numero; i++) {
        if (numero % i == 0) {
            break;
        }
    }
    if (i == numero) {
        resultado = true;
    }
    return resultado;
}
Ejercicio_04(2);
Ejercicio_04(3);
Ejercicio_04(6);
Ejercicio_04(7);
Ejercicio_04(9);
Ejercicio_04(157);
//# sourceMappingURL=04.js.map