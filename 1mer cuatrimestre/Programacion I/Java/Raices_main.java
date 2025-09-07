/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MAINS;

import ENTIDAD.Raices;
import SERVICIOS.Raices_Servicios;

/**
 *
 * @author Matias
 */
public class Raices_main {
    public static void main(String[] args) {
        Raices_Servicios s1 = new Raices_Servicios();
        Raices r1 = s1.crearEcu();
        s1.calcular(r1);
    }
}
