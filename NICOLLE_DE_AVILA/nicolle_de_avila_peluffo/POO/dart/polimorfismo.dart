abstract class FiguraGeometrica{
  double area();
}

class Cuadrado extends FiguraGeometrica{
  double lado;
  Cuadrado(this.lado);

  @override
  double area(){
    return lado * lado;
  }
}

class Circulo extends FiguraGeometrica{
  double radio;

  Circulo(this.radio);

  @override
  double area() {
    return 3.14 * radio * radio;
  }
}

class Rectangulo extends FiguraGeometrica{
  double ancho;
  double alto;

  Rectangulo(this.alto, this.ancho);

  @override
  double area() {
    return ancho * alto;
  }
}


void main(){
  List<FiguraGeometrica> figuras = [Cuadrado(4.0), Circulo(3.0), Rectangulo(3.0, 4.0)];

  for(FiguraGeometrica figura in figuras){
    print(figura.area());
  }
}