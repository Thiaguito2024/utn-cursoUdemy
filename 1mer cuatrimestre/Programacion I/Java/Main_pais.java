/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MAINS;

import SERVICIOS.Paises;

/**
 *
 * @author Matias
 */
public class Main_pais {
    public static void main(String[] args) {
        Paises p1 = new Paises();
        p1.RellenarPaises();
        p1.OrdenarLista();
        p1.RecorrerLista();
    }
}
