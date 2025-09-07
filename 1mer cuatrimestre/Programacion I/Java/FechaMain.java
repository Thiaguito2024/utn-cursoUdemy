/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MAINS;

import SERVICIOS.FechaService;
import java.util.Date;

/**
 *
 * @author Matias
 */
public class FechaMain {
    

    
        public static void main(String[] args) {
       FechaService serv = new FechaService();
       Date cumple = serv.fechaNacimiento();
       Date hoy = serv.fechaActual();
       serv.diferencia(cumple, hoy);
    }
    
}


