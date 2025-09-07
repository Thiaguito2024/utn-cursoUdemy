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
public abstract class Alojamiento {
    protected String nombre;
    protected String direccion;
    protected String localidad;
    protected String gerenteEncargado;

    public Alojamiento(String nombre, String direccion, String localidad, String gerenteEncargado) {
        this.nombre = nombre;
        this.direccion = direccion;
        this.localidad = localidad;
        this.gerenteEncargado = gerenteEncargado;
    }
       public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    
    public abstract double precioHabitacion();
    
}
