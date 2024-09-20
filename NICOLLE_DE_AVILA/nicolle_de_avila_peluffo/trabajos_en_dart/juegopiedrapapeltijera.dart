import 'dart:io';
import 'dart:math';

void main() {
  List<String> opciones = ['Piedra', 'Papel', 'Tijeras'];
  Random random = Random();

  while (true) {
    stdout.write('Elige Piedra, Papel o Tijeras (o salir para terminar): ');
    String? eleccionUsuario = stdin.readLineSync();

    if (eleccionUsuario!.toLowerCase() == 'salir') {
      break;
    }

    int indiceComputadora = random.nextInt(3);
    String eleccionComputadora = opciones[indiceComputadora];

    print('La computadora eligió: $eleccionComputadora');

    if (eleccionUsuario == eleccionComputadora) {
      print('Empate!');
    } else if ((eleccionUsuario == 'Piedra' && eleccionComputadora == 'Tijeras') ||
               (eleccionUsuario == 'Papel' && eleccionComputadora == 'Piedra') ||
               (eleccionUsuario == 'Tijeras' && eleccionComputadora == 'Papel')) {
      print('¡perdiste!');
    } else {
      print('¡ganaste!');
    }
  }

  print('Gracias por jugar!');
}