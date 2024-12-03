class Ropa{
  String? marca;
  String? color;
  double? precio;
}

class Telefono{

  String? marca;
  String? color;
  double? memoriaRAm;
}
class Muneca{
  String? nombre;
  String? marca;
  double? precio;
}

void main(){

 Ropa lila = new Ropa();
 lila.marca = "gucci";
 lila.color = "verde";
 lila.precio = "16.500" as double?;
 Telefono a = new Telefono();
 a.marca = "apple";
 a.color = "negro";
 a.memoriaRAm = "8.5" as double?;
 Muneca ali = new Muneca();
  
 ali.nombre = "barbie";
 ali.marca = "Mattel";
 ali.precio = "55.200" as double?;

}
