

class Animal{
  String? nombre;
  String? especie;
  int? edad;
}

class Perro extends Animal{
  String? color;
}

class Gato extends Animal{
  int? patas;
}

class Loro extends Animal{
  bool? habla;
}

void main(){
  Perro perro = new Perro();
  perro.nombre = "pinky";
  perro.especie = "husky";
  perro.edad = 5;
  perro.color = "negro";
  print("Perro : ${perro.nombre}, especie: ${perro.especie}, edad: ${perro.edad}, color: ${perro.color}");

  Gato gato = new Gato();
  gato.patas = 4;
  gato.nombre = "saimon";
  gato.especie = "tigrillo";
  gato.edad = 2;

  print("gato: ${gato.nombre}, numero de patas: ${gato.patas}, especie: ${gato.especie}, edad: ${gato.edad}");
  Loro loro = new Loro();
  loro.nombre = "pepe";
  loro.habla = true;
  loro.especie = "pionus senilis";
  loro.edad = 9;
  
  print("Loro: ${loro.nombre}, habla?: ${loro.habla}, especie: ${loro.especie}, edad: ${loro.edad}");
}
