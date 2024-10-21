class Persona {
  String _nombre = 'nini';  // Propiedad privada (por convención, usamos _ para indicar que es privada)
  int _edad = 10;        // Propiedad privada

 

  // Getter para el nombre
  String get nombre {
    return _nombre;
  }

 

  // Getter para la edad
  int get edad {
    return _edad;
  }
}

void main() {
  Persona persona = Persona();
  
  // Usamos el setter para modificar el nombre
    // Nombre válido
  print(persona.nombre);       // Carlos
  
         // Nombre no válido, se imprime un mensaje de error
  
  // Usamos el setter para modificar la edad
            // Edad válida
  print(persona.edad);         // 25
  
             // Edad no válida, se imprime un mensaje de error
}
