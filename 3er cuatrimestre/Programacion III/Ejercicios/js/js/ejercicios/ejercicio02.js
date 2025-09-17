// Convertir grados Celsius a Fahrenheit. Pedir por prompt los grados celsius.
// Thiago La Grotta

function convertirCelsiusAFarenheit(grados) { 
    let fahrenheit = (grados * 1.8) + 32; // Esta es la cuenta para hacer el pasaje de grados
    alert("Estos grados celsius: " + grados + " en farenheit son: " + fahrenheit);
}

// Pido datos al usuario
let gradosCelsius = Number(prompt("Ingrese grados celsius: "))
convertirCelsiusAFarenheit(gradosCelsius); // Llamo a la funcion