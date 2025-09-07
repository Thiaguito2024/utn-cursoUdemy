/* 
EJERCICIO 1
--------------
ENTIDADES VINCULADAS: Animal, Gato, Perro, Caballo.
--------------
MAIN: Ej1_Animales. 
*/

package Entidades;

public class Caballo extends Animal {

    public Caballo(String nombre, String alimento, int edad, String raza) {
        super(nombre, alimento, edad, raza);
    }

    @Override
    public void alimentarse() {
        System.out.println("Soy un caballo y como "+ alimento );
    }

}
