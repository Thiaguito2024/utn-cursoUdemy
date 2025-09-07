/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MAINS;

import ENTIDAD.Persona;
import SERVICIOS.PersonaService;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author Matias
 */
public class CrearPesonaMain {
    public static void main(String[] args) {
        Scanner leer = new Scanner(System.in).useDelimiter("\n");
        PersonaService pServicio1 = new PersonaService();
        Persona p1= pServicio1.CrearPersona();
       pServicio1.diferencia(p1);
       pServicio1.mostrarPersona(p1);
        System.out.println("cual es la eda minima que debe tener esta persona");
        int edad=leer.nextInt();
        if(pServicio1.menorQue(p1,edad)){
            System.out.println("la persona es menor que la edad consultada");
    }else{
            System.out.println("la persona es mayor que la edad consultada");
        }
    }
    
    
    
  
}
