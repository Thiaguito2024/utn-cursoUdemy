/* Un propietario desea cercar completamente un terreno utilizando vallas. Se sabe que el largo es de 40m y el ancho de 0.025km.
    1. Calcular la cantidad de metros que va a necesitar de vallas.
    2. Calcular la superficie total del terreno.
*/
// Thiago La Grotta

// PUNTO 1 
function calcularCantMetros(largo, anchokm) {
    let kmEnMetros = anchokm * 1000; // Paso los kilometros a metros, cada 1km son 1000 metros
    let perimetro = 2 * (largo + kmEnMetros); // Se multiplica por 2 dado que el terreno tiene dos lados que son el ancho y dos que son el largo
    alert("El perímetro del terreno es: " + perimetro + " metros");
}

// Casteo a numero porque para multiplicarse tienen que ser numeros
let largo = Number(prompt("Ingrese largo: "));
let anchokm = Number(prompt("Ingrese ancho: "));
calcularCantMetros(largo, anchokm); // Llamo a la funcion

// PUNTO 2
function calcularSuperficie(base, altura){
    let superficie = base * altura; // Para sacar la superficie se multiplica la base por la altura
    alert("La superficie es: " + superficie);
}

// Casteo a numero porque para multiplicarse tienen que ser numeros
let base = Number(prompt("Ingrese base: "));
let altura = Number(prompt("Ingrese altura: "));
calcularSuperficie(altura, base); // Llamo a la funcion