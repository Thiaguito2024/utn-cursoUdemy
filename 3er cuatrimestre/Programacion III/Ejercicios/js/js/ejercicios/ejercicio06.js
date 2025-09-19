// Un sistema solicita al usuario una contraseña para ingresar. Tiene hasta 3 intentos para acertarla. Si la contraseña es correcta, se le da acceso. De lo contrario, el acceso se deniega. Contraseña correcta "3propiedades"

let contrasenia = prompt("Ingrese su contrasenia: ");
let intentos = 3;

/*
while (contrasenia != "3propiedades" && intentos > 0){
    let contrasenia = prompt("Error. Quedan " + intentos + " intentos. Ingrese su contrasenia: ");
}*/


if(contrasenia === "3propiedades"){
    console.log("Contrasenia correcta");
} else{
    while (contrasenia != "3propiedades" && intentos != 0){
        intentos--;
        let contrasenia = prompt("Error. Quedan " + intentos + " intentos. Ingrese su contrasenia: ");
}
}
