/**Crear una función que reciba como único parámetro una cadena que contenga el día, mes
y año de nacimiento de una persona (con formato dd-mm-yyyy). La función mostrará por
consola a que signo corresponde dicha fecha de nacimiento.
Nota: Para descomponer la fecha recibida como parámetro utilice la función split. */

function Ejercicio_12(fecha : string) : void{
    if(fecha != null){
        let mes : number = parseInt(fecha.slice(3,5));
        let dia : number = parseInt(fecha.slice(0,2));
        let signos : string[] = Array("Capricorño","Acuario","Piscis","Aries","Tauro","Geminis","Cancer","Leo","Virgo","Libra","Escorpio","Sagitario");
        let meses20 : number[] = Array(1, 3, 4);
        let meses21 : number[] = Array(5, 6, 12);
        let meses22 : number[] = Array(7, 11);
        let meses23 : number[] = Array(8, 9, 10);
        let signoPer : string = "";        
        if(dia <= 19){
            signoPer = signos[mes - 1];
        }
        else if(dia == 20 && meses20.indexOf(mes) != -1){
            signoPer = signos[mes - 1];
        }
        else if(dia == 21 && meses21.indexOf(mes) != -1){
            signoPer = signos[mes - 1];
        }
        else if(dia == 22 && meses22.indexOf(mes) != -1){
            signoPer = signos[mes - 1];
        }
        else if(dia == 23 && meses23.indexOf(mes) != -1){
            signoPer = signos[mes - 1];
        }
        else{
            if(mes == 12){
                signoPer = signos[0];
            }
            else{
                signoPer = signos[mes];
            }
        }
        console.log("El signo correspondiente a " + fecha + " es " + signoPer); 
    }
}

Ejercicio_12("10/10/2020");
Ejercicio_12("25/10/2020");