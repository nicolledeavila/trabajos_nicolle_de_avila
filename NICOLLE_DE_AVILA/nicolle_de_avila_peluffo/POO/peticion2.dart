import 'package:http/http.dart' as http;
import 'dart:convert';

class Peticion {
  int? userId;
  int? id;
  String? title;
  String? body;

  Peticion(Map map) {
    this.userId = map['userId'];
    this.id = map['id'];
    this.title = map['title'];
    this.body = map['body'];
  }
  
}
   
  void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');
  var response = await http.get(url);
  
  Map<String, dynamic> map = jsonDecode(response.body);
  
  Peticion peticion = new Peticion(map);
  
  print('Response status: ${response.statusCode}');
  print('Response status: ${response.statusCode}');
  print(peticion.id);
  print(peticion.title);
  print(peticion.userId);
  print(peticion.body);
}

