/**Definir una función que determine si la cadena de texto que se le pasa como parámetro
es un palíndromo, es decir, si se lee de la misma forma desde la izquierda y desde la
derecha. Ejemplo de palíndromo complejo: "La ruta nos aporto otro paso natural" . */

function Ejercicio_11(cadena : string) : void{
    if(cadena != null){
        let len : number = cadena.length;
        let buffer : string = "";
        let pal : boolean = false;
        for(let i : number = 0; i < len; i++ ){
            if(cadena[i] != " "){
                buffer = buffer + cadena[i];
            }
        }
        buffer = buffer.toLowerCase();
        let i : number = 0;
        let j : number = buffer.length - 1;
        len = j / 2;
        for(;i < j; i++, j--){            
            if(buffer[i] != buffer[j]){                
                break;
            }
        }
        if(i >= j){
            pal = true;
        }
        if(pal){
            console.log("La frase [" + cadena + "] es un palindromo.");
        }
        else{
            console.log("La frase [" + cadena + "] no es un palindromo.");
        }
    }
}
//anda mal
Ejercicio_11("Esta es una prueba");
Ejercicio_11("La ruta nos aporto otro paso natural");