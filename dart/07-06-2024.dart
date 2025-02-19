import 'dart:io';

void main(){

  print('ingrese numero de alumnos');
  double cuenta = 0;
  double toma = 0;
  double cuenta2 = 0;
  double toma2 = 0;
  int numAlumns = int.parse(stdin.readLineSync()!);

  for (var ciclo = 0;ciclo <= numAlumns;ciclo++){

    print('ingrese valor a donar');

    int donac = int.parse(stdin.readLineSync()!);

    if (donac >= 5000){
      toma += donac;
      cuenta += 1;
   }else{
      toma2 += donac;
      cuenta2 += 1;

    }
  }
  double cantidad = toma + toma2;
  double promg = cantidad/numAlumns;
  double promM = cuenta / numAlumns;
  double promMn = cuenta2 / numAlumns;
  print ('la cantidad de dinero recaudado es de: $cantidad');
  print ('el promedio general es de:$promg');
  print ('la cantidad de aprendices que donaron mas de 5000 es:$cuenta');
  print ('la cantidad de aprendices que donaron menos de 5000 es de:$cuenta2');
  print ('total de dinero recaudado por los donantes de menos de 5000 es de: $toma2');
  print ('total de dinero recaudado por los donantes de mas de 5000 es de: $toma');
  print ('promedio de los que donaron mas de 5000 es de: $promM');
  print ('promedio de los que donaron menos de 5000 es de:$promMn');


}