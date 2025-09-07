"use strict";
/**Se necesita mostrar por consola los primeros 20 números primos. Para ello realizar una
función.
Nota: Utilizar console.log() */
function Ejercicio_07_EsPrimo(numero) {
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
function Ejercicio_07(cantidadNumeros) {
    var numeros = [];
    var i = 2;
    while (numeros.length < cantidadNumeros) {
        if (Ejercicio_07_EsPrimo(i)) {
            numeros.push(i);
        }
        i++;
    }
    return numeros;
}
console.log("Se piden 3 numeros. Resultado: " + Ejercicio_07(3));
console.log("Se piden 2 numeros. Resultado: " + Ejercicio_07(2));
console.log("Se piden 7 numeros. Resultado: " + Ejercicio_07(7));
console.log("Se piden 50 numeros. Resultado: " + Ejercicio_07(50));
//# sourceMappingURL=07.js.map