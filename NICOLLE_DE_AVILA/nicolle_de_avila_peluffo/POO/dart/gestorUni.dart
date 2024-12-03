class Persona {
  String nombre;
  String apellido;
  int id;
  
  static int _contadorPersonas = 0;
  
  Persona(this.nombre, this.apellido, this.id) {
    _contadorPersonas += 1;
  }
  
  String nombreCompleto() {
    return '$nombre $apellido';
  }
  
  int mostrarId() {
    return id;
  }
  
  static int contadorPersonas() {
    return _contadorPersonas;
  }
}

class Profesor extends Persona {
  Profesor(String nombre, String apellido, int id) : super(nombre, apellido, id);
  
  String tipoPersona() {
    return 'Profesor';
  }
}

class Estudiante extends Persona {
  Estudiante(String nombre, String apellido, int id) : super(nombre, apellido, id);
  
  String tipoPersona() {
    return 'Estudiante';
  }
}

void main() {
  
  var persona1 = Persona('Juan', 'Pérez', 1);
  var profesor1 = Profesor('Ana', 'García', 2);
  var estudiante1 = Estudiante('Luis', 'Martínez', 3);
  
  
  print(persona1.nombreCompleto()); 
  print(profesor1.nombreCompleto()); 
  print(estudiante1.nombreCompleto()); 
  
  print(Persona.contadorPersonas()); 
}
