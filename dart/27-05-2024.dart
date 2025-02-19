import 'dart:io';

void main(){

  print("como te llamas?");
  
  String? name = stdin.readLineSync()!;

  print("un gusto $name");

  print("podrias darme 2 numeros?");

  int n1 = int.parse(stdin.readLineSync()!);

  int n2 = int.parse(stdin.readLineSync()!);

  int resum = n1 + n2;

  print("el resultado de una suma con esos 2 numeros es = ${resum}");
}