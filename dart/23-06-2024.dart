import 'dart:math';
import 'dart:io';

void main(){
 Random randoom = Random();
 int numeroAleatorio = randoom.nextInt(100) + 1;
 int intentos = 0;
 int guess = 0;

 print("Bienvenido al juego de adivinar el numero");
 while (guess != numeroAleatorio){

  stdout.write("ingresa un numero entre el 1 y el 100");
  guess = int.parse(stdin.readLineSync()!); 
  intentos++;
  if (guess < numeroAleatorio) {
    print("mas alto. intenta denuevo.... manten tu Determinacion ;)");

  }else{

  print("!FELICIDADES GANASTE¡, adivinaste al intento numero $intentos");
  }

 }








}