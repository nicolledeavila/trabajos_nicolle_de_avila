class Persona {
  String _nombre = '';  // Propiedad privada (por convención, usamos _ para indicar que es privada)
  int _edad = 0;        // Propiedad privada

  // Setter para el nombre
  set nombre(String nuevoNombre) {
    if (nuevoNombre.isNotEmpty) {
      _nombre = nuevoNombre;
    } else {
      print("El nombre no puede estar vacío");
    }
  }

  // Getter para el nombre
  String get nombre {
    return _nombre;
  }

  // Setter para la edad
  set edad(int nuevaEdad) {
    if (nuevaEdad > 0) {
      _edad = nuevaEdad;
    } else {
      print("La edad debe ser mayor que 0");
    }
  }

  // Getter para la edad
  int get edad {
    return _edad;
  }
}

void main() {
  Persona persona = Persona();
  
  // Usamos el setter para modificar el nombre
  persona.nombre = "Carlos";   // Nombre válido
  print(persona.nombre);       // Carlos
  
  persona.nombre = "";         // Nombre no válido, se imprime un mensaje de error
  
  // Usamos el setter para modificar la edad
  persona.edad = 25;           // Edad válida
  print(persona.edad);         // 25
  
  persona.edad = -5;           // Edad no válida, se imprime un mensaje de error
}
