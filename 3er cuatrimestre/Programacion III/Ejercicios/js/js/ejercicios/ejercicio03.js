// Contar y sumar los números pares del 1 al 50. 

let suma = 0;
let contador = 0;
for (let i = 1; i <= 50; i++) {
    if (i % 2 === 0) {
        contador++;
        suma += i;
    }
}

console.log("La cantidad  de numero pares es: " + contador);
console.log("La suma de los numeros pares es: " + suma);
