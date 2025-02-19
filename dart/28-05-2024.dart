import 'dart:io';

void main(){

  print('ingrese numero de estudiantes');

  int? n = int.parse(stdin.readLineSync()!);

  for ( var numero = 1; numero <= n; numero++){

    print ('ingrese nota');
    int? n1 = int.parse(stdin.readLineSync()!);

    print ('ingrese nota');
    int? n2 = int.parse(stdin.readLineSync()!);

    print ('ingrese nota');
    int? n3 = int.parse(stdin.readLineSync()!);

    double nota = n1 + n2 + n3 / 3;

    if (nota < 6){
      print ('REPROBADO');

    }else{ 
      print ('APROBADO');

    }


  }
}