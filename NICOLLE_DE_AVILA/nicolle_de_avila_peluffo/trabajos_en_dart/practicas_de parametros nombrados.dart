class Parametro {
  String? name;
  String? seg_name;
  String? apellido;

  Parametro({this.name = "nini",this.seg_name ="mariana",this.apellido = "gonzales"});
}

void main(){
 Parametro parametro = Parametro();
 print("${parametro.apellido}");
 print("${parametro.seg_name}");
 print("${parametro.name}");
}