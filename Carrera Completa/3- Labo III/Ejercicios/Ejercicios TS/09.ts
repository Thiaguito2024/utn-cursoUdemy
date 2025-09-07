/**Realizar una función que solicite (por medio de un parámetro) un número. Si el número
es positivo, se mostrará el factorial de ese número, caso contrario se mostrará el cubo de
dicho número.
Nota: Reutilizar la función que determina el factorial de un número y la que calcula el
cubo de un número. */

function Ejercicio_09_Factorial(numero : number): number{
    let resultado : number = 1;
    for(let i : number = 1; i <= numero; i++){
        resultado = resultado * i;
    }
    return resultado;
}
function Ejercicio_09_Cubo(numero : number): number{
    return numero * numero;
}

function Ejercicio_09(numero : number): void{
    if(numero < 0){
        console.log("El cubo de " + numero + " es: " + Ejercicio_09_Cubo(numero));
    }
    else{
        console.log("El factorial de " + numero + " es: " + Ejercicio_09_Factorial(numero));
    }
}

Ejercicio_09(-1);
Ejercicio_09(0);
Ejercicio_09(5);
Ejercicio_09(-58);