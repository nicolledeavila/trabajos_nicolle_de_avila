
import 'dart:io';

void main(){

  print('ingrese su nombre');
  String? N = stdin.readLineSync();
  
  print ('ingrese dato 1 para la suma');
  int? numer = int.parse(stdin.readLineSync()!);

  print('ingrese dato numero 2');
  int? numer1 = int.parse(stdin.readLineSync()!);
 
  int? respuestaSum = (numer + numer1);

 print('señorx $N el resultado de su suma es: $respuestaSum');


}