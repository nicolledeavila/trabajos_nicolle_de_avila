import 'dart:math';
import 'dart:io';

List<Map<String,String>>
preguntasRespuestas = [{'pregunta': '¿cual es la capital de colombia?', 'respuesta': 'bogota'} , {'pregunta': '¿cuantos dias tiene la semana?', 'respuesta': '7'}, {'pregunta': '¿en que año se descubrio america?', 'respuesta': '1492'},];


void juegopreguntasrespuesta(){

  Random random = Random();
  int pregTotales = preguntasRespuestas.length;
  int preguntasRespondidas = 0;

  while (preguntasRespondidas<pregTotales){
    int indicePregunta = random.nextInt(pregTotales);
    Map<String, String>preguntaActual = preguntasRespuestas[indicePregunta];

    print('pregunta ${preguntaActual['pregunta']}');
    String? respuestaUsuario = stdin.readLineSync();
    if (respuestaUsuario!.toLowerCase() == preguntaActual['respuesta']!.toLowerCase()){

      print('¡respuesta correcta!');

    }else{
      print ('respuesta incorrecta!. la respuesta correcta es ${preguntaActual['respuesta']}');

    }
     preguntasRespondidas++;
  }
  print('!juego completado!');
}

void main(){
  juegopreguntasrespuesta();
}
