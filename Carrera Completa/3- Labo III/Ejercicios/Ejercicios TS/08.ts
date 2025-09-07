/**Crear una función que realice el cálculo factorial del número que recibe como parámetro.
Nota: Utilizar console.log() */

function Ejercicio_08(numero : number) : number{
    let resultado : number = 1;
    if(numero > 0){
        for(let i : number = 1; i <= numero; i++){
            resultado = resultado * i;
        }
    }
    return resultado;
}

console.log("El factorial de 1 es: " + Ejercicio_08(1));
console.log("El factorial de 3 es: " + Ejercicio_08(3));
console.log("El factorial de 7 es: " + Ejercicio_08(7));
console.log("El factorial de 10 es: " + Ejercicio_08(10));
console.log("El factorial de 14 es: " + Ejercicio_08(14));