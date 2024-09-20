

class Estudiante{

  String? nombre;
  String? apellido;
  int? ID;
  String? asignatura;

  Estudiante(this.nombre, this.apellido, this.ID, this.asignatura){
    this.nombre = nombre;
    this.apellido = apellido;
    this.ID = ID;
    this.asignatura = asignatura;
  }

  String todosLosDatos() {
    return "${this.nombre} ${this.apellido} ${this.ID} ${this.asignatura}";
  }

}

void main(){

  Estudiante estd = Estudiante("lili", "mesas", 1232562, "religion");
  print(estd.todosLosDatos());
  




  
}