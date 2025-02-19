
import java.util.*;

class Transporte {
    public String empresa;
    public String ciudad;
    public String getInfo(){
      return this.empresa + this.ciudad;
    }
}
   
class Publico extends Transporte {
    private int ninterno;
    public String ruta;
    public Publico( int n){
       this.ninterno = n;
    }
    public String getCodigo(){
       return String.valueOf(this.ninterno);
    }
}
   
class Particular extends Transporte {
    public String placa;
    public String color;
    private int modelo;
      
    public Particular(int m) {
     this.modelo = m;
    }
      
    public String getinfo() {
     return this.placa + this. color;
    }
      
      
    public String getCodigo() {
     return String.valueOf(this.modelo);
    } 

}  
   
public class main {
    public static void main(String[] args) {
        Publico bus = new Publico(1234);
        bus.empresa = "-coolitoral";
        bus.ciudad = "-barranquilla";
        bus.ruta = "-la 8";

        Particular carro = new Particular(2000);
        carro.ciudad = "-barranquilla";
        carro.color = "-negro";
        carro.empresa = "-toyota";
        carro.placa = "-BWWX2";


        System.out.println("info del publico" +bus.getInfo() + "ruta" + bus.ruta);
        System.out.println("codigo del publico" + bus.getCodigo());
        System.out.println("info del particular" +carro.getInfo());
        System.out.println( "fecha de la proxima tecno mecanica" +carro.getCodigo());
    }
}

    
