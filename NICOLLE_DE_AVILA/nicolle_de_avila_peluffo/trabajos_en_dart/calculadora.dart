import 'dart:io';

void main() {
 calcular();

}

void calcular() {
   
  double resultado =0;
  
  print('ingrese el numero 1:');

  double numero1 = double.parse(stdin.readLineSync()!);

  print('ingrese el numero 2:');
  double numero2 = double.parse(stdin.readLineSync()!);
  
  print('seleccione la opcion que dese: 1: sumar; 2: restar; 3:multiplicar; 4:dividir');
  int opcion = int.parse(stdin.readLineSync()!);

  if(opcion == 1){
    resultado = sumar(numero1, numero2);
     
  }else if(opcion == 2){
    resultado = restar(numero1, numero2);

  }else if(opcion == 3){
    resultado = multiplicar(numero1, numero2);

  }else if(opcion == 4 ){ 
    resultado = dividir(numero1, numero2);

  }
     
  print('el resultado es de:$resultado');

}

double sumar(double numero1, double numero2){
  return numero1 + numero2; 
}

double restar(double numero1, double numero2){
  return numero1 - numero2;
}

double multiplicar(double numero1, double numero2){
  return numero1 * numero2;
}

double dividir(double numero1, double numero2){
 return numero1 / numero2;
}
