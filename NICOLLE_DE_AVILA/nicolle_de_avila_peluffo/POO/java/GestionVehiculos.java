package ADSO2928707.portafolio_aprendices.nicolle_de_avila_peluffo.POO;

import java.util.*;
public abstract class vehiculo{
    protected String marca;
    protected String modelo;
    protected int año;

    public vehiculo(String marca, String modelo, int año){
        this.marca = marca;
        this.modelo = modelo;
        this.año= año;
    }

    public abstract void arrancar();
    public abstract void acelerar();
    public abstract void frenar();
}

class Coche extends vehiculo{
    private int numPurtas;

    public Coche(String marca, String modelo, int año){
        super(marca, modelo, año);
        this.numPurtas = numPurtas;
    }

    @Override
    public void acelerar(){
        System.out.println("El coche acelera");
    }

    @Override
    public void arrancar(){
        System.out.println("El auto arranca");
    }

    @Override
    public void frenar(){
        System.out.println("el auto frena");
    }

}

class Moto extends vehiculo{
    private int cilindrada;
    public Moto(String marca, String modelo, int año){
        super(marca, modelo, año);
        this.cilindrada = cilindrada;
    }

    @Override
    public void acelerar(){
        System.out.println("la moto acelera");
    }

    @Override
    public void arrancar(){
        System.out.println("la moto arranca");
    }

    @Override
    public void frenar(){
        System.out.println("la moto frena");
    }
}

public class GestionVehiculos{
    public static void main(String[] args) {
        Coche coche = new Coche("mama", "2", 2000);

        Moto moto = new Moto("honda", "cbr500r", 2020500);

        coche.arrancar();
        coche.acelerar();
        coche.frenar();

        moto.arrancar();
        moto.acelerar();
        moto.frenar();

    }
}
