import 'dart:io';

class Colaborador{
  String? _nombreCompleto;
  int? _tipoColaborador;
  double _aporte = 0;

  Colaborador (String nombre,double aporte, int tipo){
    this._nombreCompleto = nombre;
    this. _aporte = aporte;
    this. _tipoColaborador = tipo;
  }

  String? getNombreCompleto(){
    return this._nombreCompleto;
  }

  int? getTipo(){
    return this. _tipoColaborador;
  }

  @override

  String toString(){
    return "su nombre es: ${this._nombreCompleto}, su aporte es de: ${_aporte}, su tipo de colaboracion es ${_tipoColaborador}";
  }

  double getAporte(){
    return this._aporte;
  }


}
class Recolecta{
  List<Colaborador>_colaboradores = [];
  double _montoRecuadar = 0;
  double _balance = 0;

  Recolecta(double monto,double balance){
    this._balance = balance;
    this._montoRecuadar =monto;
  }
  List<Colaborador> generoso=[];


  List generosos(){
    return generoso;
  }

  void addColaborador(Colaborador colaborador){
    this._colaboradores.add(colaborador);
    if(colaborador.getAporte()>10000){
      this.generosos().add(colaborador);
    }
  }


  bool finalizada(){
    if(this._balance>= this._montoRecuadar ){
      return true;
    }else{
      return false;
    }
  }

  double recaudoGeneroso(){
    double obtenido1 = 0;
    for(int i = 0; i < _colaboradores.length; i++){
      obtenido1 += _colaboradores[i].getAporte();
    }
    return obtenido1;

  }

  double promedioGenerosos(){
    double promedio = 0;
    for(int i = 0; i < generoso.length; i++){
      promedio = promedio + generoso[i]._aporte;
    }
    promedio = promedio/generoso.length;
    return promedio;
  }

  recaudoPorTipo(){
    print("ingrese el tipo de colaborador [1] si es aprendiz o [2] si es instructor");
    int eleccion = int.parse(stdin.readLineSync()!);

    double tipo1Total = 0;
    if(eleccion == 1){
      for(int i = 0; i < generoso.length; i++){
        tipo1Total = tipo1Total + generoso[i]._aporte;
      }
      return tipo1Total;
    }else if(eleccion == 2){
      double tipo2Total = 0;
      for(int i = 0; i < generoso.length; i++){
        tipo2Total = tipo2Total + generoso[i]._aporte;
      }
      return tipo2Total;
    }
  }

}

void main(){
 Colaborador colaborador1 = Colaborador("Kylie", 2000, 1);
  Colaborador colaborador2 = Colaborador("John", 15000, 2);

  Recolecta recolecta = Recolecta(0, 50000);
  recolecta.addColaborador(colaborador1);
  recolecta.addColaborador(colaborador2);
  recolecta.generoso;
  recolecta.promedioGenerosos();

  print(colaborador1.toString());
  print(colaborador2.toString());

  print("los generosos que donaron mas de 10000 son");
  print(recolecta.generoso);  
  print("el promedio de los que donarion mas de 10000 es de");
  print(recolecta.promedioGenerosos());
  print("lo obtenido en general es de:");
  print(recolecta.recaudoGeneroso());

}