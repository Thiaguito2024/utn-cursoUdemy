/*

 */
package Entidades;

public class BarcoMotor extends Barco {

    private int potenciaCV;

    // Contructores
    public BarcoMotor(int potenciaCV, String matricula, double eslora, int anioFabricacion) {
        super(matricula, eslora, anioFabricacion);
        this.potenciaCV = potenciaCV;
    }

    // Getters and Setters
    public int getPotenciaCV() {
        return potenciaCV;
    }

    public void setPotenciaCV(int potenciaCV) {
        this.potenciaCV = potenciaCV;
    }

    @Override
    public double calcularModulo() {
        return super.calcularModulo() + potenciaCV;
    }

}
