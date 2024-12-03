package ADSO2928707.portafolio_aprendices.nicolle_de_avila_peluffo.POO;

public class herencia {
    public static void main(String[] args) {
        Persona pablo = new Persona("blanco", "ojo azul");

        Hijo mario = new Hijo("marron", "verde", "marron", "llenito");

        System.out.println("El padre es: " + pablo.tonoPiel + ", " + pablo.colorOjos);
        System.out.println("El hijo es: " + mario.tonoPiel + ", " + mario.contextura + ", " + mario.colorOjos + ", " + mario.colorCabello);
    }
}

public class Persona {

    public String tonoPiel;
    public String colorOjos;

    public Persona(String tonoPiel, String colorOjos) {
        this.tonoPiel = tonoPiel;
        this.colorOjos = colorOjos;
    }
}

class Hijo extends Persona {
    public String colorCabello;
    public String contextura;

    public Hijo(String tonoPiel, String colorOjos, String colorCabello, String contextura) {
        super(tonoPiel, colorOjos);
        this.colorCabello = colorCabello;
        this.contextura = contextura;
    }
}