/*
    Generar una tabla de multiplicar del 1 al 3 con bucles for anidados.
*/

for(let i = 1; i <= 3; i++){ // Primer for que va de 1 a 3 simulando las tablas
    for(let j = 1; j <= 10; j++){ // Segundo for que va de 1 a 10 simulando el numero multiplicado
        let resultado = i * j;
        console.log(i + " x " + j + " = " + resultado);  // Muestro el resultado
    }
}