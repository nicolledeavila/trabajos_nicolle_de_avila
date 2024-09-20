import 'dart:io';

void main(){

  print("ingrese cuanto dinero desea recolectar");
  int reco = int.parse(stdin.readLineSync()!);
  int acumVaca = 0;
  int acumMayores = 0;
  int acumMenore = 0;
  int contMayore = 0;
  int contMenores = 0;
  while (acumVaca < reco){
   print("cuanto dinero desea abonar");
   int vaca = int.parse(stdin.readLineSync()!);
   acumVaca = (acumVaca + vaca) as int;
   
    if(vaca >= 5000){
      acumMayores=(acumMayores+vaca) as int;
      contMayore = contMayore +1;

    }else{
      acumMenore=(acumMenore+vaca) as int;
      contMenores=contMenores+1;
    }
    double promMayores = acumMayores/contMayore;
    double promMenores= acumMenore/contMenores;
    double promGen = acumVaca/reco;
    int cantPersonas = contMenores + contMayore;
    print("el total recaudado  es de $acumVaca");
    print("el total del promedio recaudado es de $promGen");
    print("promedio de las personas que donaron mas de 5000 $promMayores");
    print("promedio de los que donaron ,enos de 5000 $promMenores");
    print("cantidad recaudada de los que donaron mas de 500 $acumMayores");
    print("cantidad de dinero recaudada de los que donaron menos de 5000 $acumMenore");
    print("cantidad de personas que donaron mas de 5000 $contMayore");
    print("cantidad de personas que donaron menos de 5000 $contMenores");
    print("cantidad de personas en general que donaron $cantPersonas");



  }


}