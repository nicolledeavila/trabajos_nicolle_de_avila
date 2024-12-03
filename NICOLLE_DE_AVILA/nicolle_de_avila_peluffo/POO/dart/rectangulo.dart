class Rectangulo{
  double? alto;
  double? ancho;

  Rectangulo(this.alto, this.ancho);
  
  double calculoArea(){
    return alto! * ancho!;
  }

}

void main(){
  Rectangulo lulu = new Rectangulo(10, 11.5);
  print('el resultado es: ${lulu.calculoArea()}');
}