import 'dart:io';

void main(){
 
  print ('ingrese su declaracion de renta');
  
  int? renta = int.parse(stdin.readLineSync()!);
  
  if (0<= renta  && renta <=10){
    double dsct = renta * 0.20;
    print ('se le ha aplicado un descuento del 20% su valor ahora es del {$dsct}');

  }else{
    if (11<= renta  && renta<= 100){
      double dsct2 = renta * 0.10;
      print ("se le ha aplicado un descuento del 10% su valor ahora es de {$dsct2}");
    }else{
      if (101<= renta  && renta <= 1000){
        double dsct3 = renta + 0.05;
        print ('se le ha aplicado un descuento del 5% su valor ahora es de {$dsct3}');
      }else{ 
        (renta > 1000);
        double dsct4 = renta + 0.01;
        print("has obtenido un descuento del 1% su valor ahora es de {$dsct4}");

      
      }    


     
    }
  }


}