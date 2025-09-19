// Tabla de multiplicar de un número. Pedir por prompt.

let numero = Number(prompt("Ingrese numero: "));
console.log("La tabla del numero pedido es: " + numero);

for (let i = 1; i <= 10; i++){
    let resultado = i * numero;
    console.log(numero + " x " + i + " = " + resultado);
}