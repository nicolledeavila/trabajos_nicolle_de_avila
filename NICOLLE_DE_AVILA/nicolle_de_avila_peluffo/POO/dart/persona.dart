class Persona{
  String? nombre;
  int? edad;
  String? genero;

  Persona(this.nombre, this.edad, this.genero);

  void metodoImprimir(){
    print('el nombre es: ${nombre}');
    print('la edad es: ${edad}');
    print('el genero es: ${genero}');
  }
}

void main(){
  Persona lol = new Persona("lilith", 21, "mujer");
 lol.metodoImprimir();

}

