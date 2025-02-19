class Muneca {
  String? marca;
  String? nombre;
  String? color;

  Muneca(String marca, String nombre, String color) {
    this.marca = marca;
    this.nombre = nombre;
    this.color = color;
  }

  String todosLosDatos() {
    return "${this.marca} ${this.nombre} ${this.color}";
  }
}

void main() {
  Muneca ala = new Muneca("mattel", "barbie", "rosa");

 print(ala.todosLosDatos());
}
