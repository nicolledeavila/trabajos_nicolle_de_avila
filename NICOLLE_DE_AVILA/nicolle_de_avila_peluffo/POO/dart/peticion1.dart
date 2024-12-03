import 'package:http/http.dart' as http;
import 'dart:convert';


class Usuario{
  String? nombre;
  String? apellido;
  String? gmail;
  int? edad;
  
  Usuario({this.nombre, this.apellido, this.gmail, this.edad});
  
  Map<String,dynamic> tojson(){
    return{
      'nombre':nombre,
      'apellido': apellido,
      'gmail':gmail,
      'edad': edad,
    };
  }
  
}

void main()async{
  Usuario usuario = new Usuario(
  nombre:'lucy',
  apellido: 'perez',
  gmail:'lucyPez@gmail.com',
  edad: 22);
  
  String json = jsonEncode(usuario.tojson());
  
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  http.Response respuesta = await http.post(url, body: json, headers:{'Content-Type': 'application/json',});
  
  print(respuesta.body);
}  