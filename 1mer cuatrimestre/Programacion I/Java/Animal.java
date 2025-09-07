/* 
EJERCICIO 1
--------------
ENTIDADES VINCULADAS: Animal, Gato, Perro, Caballo.
--------------
MAIN: Ej_1Animales.

Tenemos una clase padre Animal junto con sus 3 clases hijas Perro, Gato, Caballo.
La clase Animal tendrá como atributos el nombre, alimento, edad y raza del Animal.
Crear un método en la clase Animal a través del cual cada clase hija deberá 
mostrar luego un mensaje por pantalla informando de que se alimenta. 
*/


package Entidades;

import java.util.Scanner;


public class Animal {
    protected String nombre;
    protected String alimento;
    protected int edad;
    protected String raza;
    
    Scanner leer = new Scanner(System.in);

    public Animal(String nombre, String alimento, int edad, String raza) {
        this.nombre = nombre;
        this.alimento = alimento;
        this.edad = edad;
        this.raza = raza;
    }

    public void alimentarse(){
        System.out.println("");
    }
    
}
