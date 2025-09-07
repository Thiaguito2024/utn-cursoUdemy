/*3. Realizar una función que reciba un parámetro requerido de tipo numérico y otro opcional
de tipo cadena. Si el segundo parámetro es recibido, se mostrará tantas veces por
consola, como lo indique el primer parámetro. En caso de no recibir el segundo
parámetro, se mostrará el valor inverso del primer parámetro.*/

function Ejercicio_03 (numero : number, cadena? : string) : void{
    if(cadena != null){
        for(let i : number = 0; i < numero; i++){
            console.log(cadena);
        }
    }
    else{
        console.log(numero - (numero * 2));
    }
}
Ejercicio_03(5,"Se supone que lo muestre 5 veces");
Ejercicio_03(10);
Ejercicio_03(1,"Debio haber mostrado -10");
Ejercicio_03(-10);
Ejercicio_03(1,"Debio haber mostrado 10");