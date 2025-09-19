// Un agricultor desea saber cuántos kilogramos de frutas ha cosechado en 5 árboles. Cada árbol produce una cantidad distinta, que se ingresará en el sistema. Al finalizar, debe mostrarse la cantidad total recolectada. 

let acum = 0;

for (let i = 1; i <= 5; i++){
    let cantidad = Number(prompt("Ingrese cantidad: "))
    acum += cantidad;
}

console.log("La cantidad recolectada es: " + acum);
