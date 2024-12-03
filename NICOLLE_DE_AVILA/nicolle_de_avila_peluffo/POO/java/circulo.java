package ADSO2928707.portafolio_aprendices.nicolle_de_avila_peluffo.POO;


public class circulo {
    private double radio;

    public circulo(double radio) {
        this.radio = radio;
    }

    public double calcularArea() {
        return Math.PI * Math.pow(radio, 2);
    }

    public double calcularPerimetro() {
        return 2 * Math.PI * radio;
    }

    public static void main(String[] args) {

        circulo miCirculo = new circulo(5.0);


        System.out.println("Área: " + miCirculo.calcularArea());
        System.out.println("Perímetro: " + miCirculo.calcularPerimetro());
    }
}

