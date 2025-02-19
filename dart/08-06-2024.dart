import 'dart:io';

void main(){

print ('ingrese 3 numeros enteros');

for ( var veve = 0;veve <= 3;veve++);

int num1 = int.parse(stdin.readLineSync()!);
int num2 = int.parse(stdin.readLineSync()!);
int num3 = int.parse(stdin.readLineSync()!);

int suma = num1 + num2 + num3;
double promE = suma / 3;

print("el promedio de sus datos es de $promE");

}