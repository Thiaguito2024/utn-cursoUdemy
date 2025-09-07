"use strict";
/*Guardar su nombre y apellido en dos variables distintas. Dichas variables serán pasadas
como parámetro de la función MostrarNombreApellido, que mostrará el apellido en
mayúscula y el nombre solo con la primera letra en mayúsculas y el resto en minúsculas.
El apellido y el nombre se mostrarán separados por una coma (,).
Nota: Utilizar console.log()*/
function MostrarNombreApellido(nombre, apellido) {
    if (apellido != null && nombre != null) {
        var buffNombre = nombre.toLowerCase();
        buffNombre = buffNombre.charAt(0).toUpperCase() + buffNombre.slice(1);
        var buffApellido = apellido.toUpperCase();
        console.log(buffApellido + ", " + buffNombre);
    }
}
MostrarNombreApellido("demian", "murray");
//# sourceMappingURL=05.js.map