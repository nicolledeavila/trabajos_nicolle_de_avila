
class Persona {
  String nombre;
  int edad;
  String ocupacion;

  Persona(this.nombre, this.edad, this.ocupacion);

  String obtenerMensaje() {
    return 'Nombre: $nombre, Edad: $edad, Ocupación: $ocupacion';
  }


  void imprimirMensaje() {
    print(obtenerMensaje());
  }
}

void main() {
  
  Persona persona = Persona('Juan', 30, 'Ingeniero');
  
 
  persona.imprimirMensaje();
}


