/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

/**
 *
 * @author Matias
 */
public class AlojamientoExtraHotelero extends Alojamiento {
    protected boolean privado;
    protected double metrosCuadrados;

    public AlojamientoExtraHotelero(boolean privado, double metrosCuadrados, String nombre, String direccion, String localidad, String gerenteEncargado) {
        super(nombre, direccion, localidad, gerenteEncargado);
        this.privado = privado;
        this.metrosCuadrados = metrosCuadrados;
    }

            @Override 
            public double precioHabitacion(){
                double p = 0;
                return p;
            }
            
}
