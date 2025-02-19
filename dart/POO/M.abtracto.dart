class vehiculo{
  String? marca;
  String? modelo;
  int? year;

  vehiculo( this.marca, this.modelo, this.year);

  void mostrarInfo(){
    print("Marca: $marca, modelo: $modelo, año:$year");
  }
  void arrancar(){}
  void frenar(){}

}

class Coche extends vehiculo{
  Coche (String marca, String modelo, int year) : super (marca, modelo, year);


  @override
  void arrancar(){
    print("el coche esta arrancando");
  }

  @override
  void frenar(){
    print("el coche esta frenando");
  }
}

class Moto extends vehiculo{
  Moto (String marca, String modelo, int year) : super (marca, modelo, year);

}

@override
void arrancar(){
  print("la moto esta arrancando");
}

@override
void frenar(){
  print("la moto esta frenando");  
}  

void main(){
  Coche coche = new Coche("toyota", "no se", 2020);
  coche.mostrarInfo();
  coche.arrancar();
  coche.frenar();

  Moto moto = new Moto("Honda", "CBR500R", 201);
  moto.mostrarInfo();
  moto.arrancar();
  moto.frenar();
}
