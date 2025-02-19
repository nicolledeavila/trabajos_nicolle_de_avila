class Persona {
  String? name;
  String? apellido;
  int _edad = 0;

  Persona({this.name = "nini", this.apellido = "nana"});

  set edad(int value) {
    _edad = value;
  }

  get edad1 {
    return _edad;
  }

  void colorFavorite() {
    print("me gusta el rosa");
  }
}

class Nina extends Persona {
  @override
  void colorFavorite() {
    print("mi color fav es el rosa");
  }
}

void main() {
  Persona persona = Persona();
  print(persona.name);
  print(persona.apellido);
  persona.edad = 20;
  print(persona.edad1);

  persona.colorFavorite();
}
