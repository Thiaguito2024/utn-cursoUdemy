/*
 */
package Entidades;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Alquiler {
    private String nombreCliente;
    private String dni;
    private LocalDate fechaAlquiler;
    private LocalDate fechaDevolucion;
    private int posicionAmarre;
    private Barco barco;
    
    // Constructores

    public Alquiler() {
    }
    
    

    public Alquiler(String nombreCliente, String dni, LocalDate fechaAlquiler, LocalDate fechaDevolucion, int posicionAmarre, Barco barco) {
        this.nombreCliente = nombreCliente;
        this.dni = dni;
        this.fechaAlquiler = fechaAlquiler;
        this.fechaDevolucion = fechaDevolucion;
        this.posicionAmarre = posicionAmarre;
        this.barco = barco;
    }
    
    // Getters and Setters

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public LocalDate getFechaAlquiler() {
        return fechaAlquiler;
    }

    public void setFechaAlquiler(LocalDate fechaAlquiler) {
        this.fechaAlquiler = fechaAlquiler;
    }

    public LocalDate getFechaDevolucion() {
        return fechaDevolucion;
    }

    public void setFechaDevolucion(LocalDate fechaDevolucion) {
        this.fechaDevolucion = fechaDevolucion;
    }

    public int getPosicionAmarre() {
        return posicionAmarre;
    }

    public void setPosicionAmarre(int posicionAmarre) {
        this.posicionAmarre = posicionAmarre;
    }

    public Barco getBarco() {
        return barco;
    }

    public void setBarco(Barco barco) {
        this.barco = barco;
    }
    
    public double calcularPrecioAlquiler(){
        long diasOcupados = ChronoUnit.DAYS.between(fechaAlquiler,fechaDevolucion);
        double moduloBarco = barco.calcularModulo();
        return diasOcupados * moduloBarco;
        
    }
    
}
