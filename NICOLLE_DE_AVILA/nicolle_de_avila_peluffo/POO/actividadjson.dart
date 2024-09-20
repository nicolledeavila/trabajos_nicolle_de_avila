import 'dart:convert';

class Colaborador {
  String? nombreCompleto;
  int? tipoColaborador;
  double? aporte;
  Colaborador(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    this.nombreCompleto = json["nombreCompleto"];
    this.tipoColaborador = json["tipoColaborador"];
    this.aporte = json["aporte"];
  }
}

void main() {
  String jsoninfo;
  jsoninfo = '{"nombreCompleto": "luisa","tipoColaborador": 1,"aporte": 12.0}';
  Colaborador colaborador = Colaborador(jsoninfo);
  print(colaborador.nombreCompleto);
  print(colaborador.tipoColaborador);
  print(colaborador.aporte);
}
