"use strict";
/**Definir una función que muestre información sobre una cadena de texto que se le pasa
como argumento. A partir de la cadena que se le pasa, la función determina si esa cadena
está formada sólo por mayúsculas, sólo por minúsculas o por una mezcla de ambas. */
function Ejercicio_10(cadena) {
    if (cadena != null) {
        console.log("La cadena es \"" + cadena + "\".");
        var len = cadena.length;
        var upp = false;
        var low = false;
        for (var i = 0; i < len; i++) {
            if (cadena[i] >= "a" && cadena[i] <= "z") {
                low = true;
            }
            else if (cadena[i] >= "A" && cadena[i] <= "Z") {
                upp = true;
            }
        }
        if (upp) {
            if (low) {
                console.log("La cedena tiene mayusculas y minusculas.");
            }
            else {
                console.log("La cadena tiene solo mayusculas.");
            }
        }
        else if (low) {
            console.log("La cadena tiene solo minusculas.");
        }
        else {
            console.log("La cadena no contiene letras.");
        }
    }
}
Ejercicio_10("HOLA");
Ejercicio_10("Hola mundo!");
Ejercicio_10("chau");
Ejercicio_10("12345");
//# sourceMappingURL=10.js.map