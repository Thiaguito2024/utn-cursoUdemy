/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MAINS;

import java.util.*;

/**
 *
 * @author Matias
 */
public class NUEVOS_TEMAS_COLECCIONES {
    public static void main(String[] args) {
        ArrayList<String> frutas = new ArrayList<String>();
frutas.add("manzana");
frutas.add("banana");
frutas.add("kiwi");
frutas.add("manzana");

Iterator<String> iterador = frutas.iterator();
while (iterador.hasNext()) {
    String fruta = iterador.next();
    if (fruta.equals("manzana")) {
        iterador.remove();
    }
    
}

System.out.println(frutas);
    }   
    
