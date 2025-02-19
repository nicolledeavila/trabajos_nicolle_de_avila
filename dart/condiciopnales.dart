import 'dart:io';
void main(){
 print('ingrese su declaracion de renta');
 int? varRenta = int.parse(stdin.readLineSync()!);

 if ( 0<= varRenta && varRenta <= 10){
   double dsc = varRenta * 0.20;
   print('se le ha aplicado un descuento del 20% su valor ahora es de: {$dsc}');

  } else  if ( 11<= varRenta && varRenta <=100){
   double dscB = varRenta * 0.10;
   print ('ha resivido un descuento del 10%  su valor ahora es de: {$dscB}');

  } else if (101<= varRenta && varRenta <= 1000){
   double dsc2 = varRenta * 0.05;
   print('ha resivido un descuento del 5% ahora su valor es de: {$dsc2}');

  } else if ( varRenta > 1000 ){
   double postD = varRenta * 0.01;
   print('ha obtenido un descuento del 1% su valor ahora es de: {$postD}');

  }


}