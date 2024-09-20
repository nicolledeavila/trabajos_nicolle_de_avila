import 'dart:io';

void main(){
  calcular();

}

void calcular() {

  double resultado = 0;
  
  print("ingrese el primer numero");
  double num1 = double.parse(stdin.readLineSync()!); 
  print("ingrese el segundo numero");
  double num2 = double.parse(stdin.readLineSync()!);
  
  print("seleccion la opcion deseada, 1 si es suma, 2 si es resta, 3 si es divicion, 4 si es multiplicacion");
  int opcion = int.parse(stdin.readLineSync()!);

  if(opcion== 1){
    resultado = sumar(num1, num2);
  }else if(opcion == 2){
    resultado = restar(num1, num2);
  }else if(opcion == 3){
    resultado = divicion(num1, num2);
  }else if (opcion== 4){
    resultado = multiplicar(num1, num2);
  }

  print("el resultado es: $resultado ");
}

double sumar(double num1, double num2){
  return num1 + num2;
}

double restar(double num1, double num2){
  return num1 - num2;
}

double divicion(double num1, double num2){
 return num1 / num2;
}

double multiplicar(double num1, double num2){
  return num1 * num2;
}

