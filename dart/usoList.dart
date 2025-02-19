import 'dart:io';

void main(){

  print("cuanto dinero desea recolectar");
  int dinero = int.parse(stdin.readLineSync()!);
  List<int> lista = [];
  int reco = 0;

  while(reco<dinero){
    print("cuanto desea abonar");
    int abono = int.parse(stdin.readLineSync()!);
    lista.add(abono);
    reco +=abono;
  }

  print(" se recogio ${dinero}");
  print("lista del dinero que fue abonado");
  print(lista);
}