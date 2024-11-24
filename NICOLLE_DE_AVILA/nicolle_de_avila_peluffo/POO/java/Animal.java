package ADSO2928707.portafolio_aprendices.nicolle_de_avila_peluffo.POO;

public class Animal{

   public String nombre;

   public Animal( String nombre){
      this.nombre = nombre;
   }

   public void hacerSonido(){
      System.out.println("El animal hace un sonido");
   }
}

class Perro extends Animal{

   public int patas;
   public Perro(String nombre, int patas) {
      super(nombre);
      this.patas = patas;
   }

   @Override
   public void hacerSonido(){
      System.out.println("woof!");
   }
   
}

public class SobreEscribir{
   public static void main(String[] args) {
     Animal lobo = new Animal("PATRICIO"); 
     lobo.hacerSonido();

     Perro choclo = new Perro("sasaki", 4);
     choclo.hacerSonido();

     
   }

}