import 'dart:io';

void main(){
  print ('ingrese su nomnre');
  String? N = stdin.readLineSync();

  print ('ingrese apellido');

  String? AP = stdin.readLineSync();

  String completename = N! + AP!; 

  print ('ingrese un numero:');
  int? n1 = int.parse(stdin.readLineSync()!);

  print('ingrese un numero:');
  int? n2 = int.parse(stdin.readLineSync()!);

  print ('ingrese un numero:');
  int? n3 = int.parse(stdin.readLineSync()!);

  int Sum = n1 + n2 + n3;
  double prom = Sum / 3;

  print ('el resultado del promedio es: $prom');
  print ('tu nombre completo es: $completename');
}