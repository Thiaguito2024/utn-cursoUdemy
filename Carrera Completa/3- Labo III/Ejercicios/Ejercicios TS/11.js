"use strict";
/**Definir una función que determine si la cadena de texto que se le pasa como parámetro
es un palíndromo, es decir, si se lee de la misma forma desde la izquierda y desde la
derecha. Ejemplo de palíndromo complejo: "La ruta nos aporto otro paso natural" . */
function Ejercicio_11(cadena) {
    if (cadena != null) {
        var len = cadena.length;
        var buffer = "";
        var pal = false;
        for (var i_1 = 0; i_1 < len; i_1++) {
            if (cadena[i_1] != " ") {
                buffer = buffer + cadena[i_1];
            }
        }
        buffer = buffer.toLowerCase();
        var i = 0;
        var j = buffer.length - 1;
        len = j / 2;
        for (; i < j; i++, j--) {
            if (buffer[i] != buffer[j]) {
                break;
            }
        }
        if (i >= j) {
            pal = true;
        }
        if (pal) {
            console.log("La frase [" + cadena + "] es un palindromo.");
        }
        else {
            console.log("La frase [" + cadena + "] no es un palindromo.");
        }
    }
}
//anda mal
Ejercicio_11("Esta es una prueba");
Ejercicio_11("La ruta nos aporto otro paso natural");
//# sourceMappingURL=11.js.map