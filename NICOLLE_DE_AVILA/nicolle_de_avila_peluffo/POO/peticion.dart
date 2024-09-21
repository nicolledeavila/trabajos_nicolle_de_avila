import 'package:http/http.dart' as http;
import 'dart:convert';

class Peticion {
  int? userId;
  int? id;
  String? title;
  String? body;

  Peticion(Map map) {
    //Map<dynamic, dynamic> map = jsonDecode();
    this.userId = map['userId'];
    this.id = map['id'];
    this.title = map['title'];
    this.body = map['body'];
  }
  
}

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');
  var response = await http.get(url);
  
  //String lili ='{"userId": 1,"id": 1,"title": "suntaut facere repellat provident occaecati excepturi optio reprehenderit","body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"}';
  Map<String, dynamic> map = jsonDecode(response.body);
  Peticion peticion = new Peticion(map);
  
  print('Response status: ${response.statusCode}');
  print('Response status: ${response.statusCode}');
  print(peticion.id);
  print(peticion.title);
  print(peticion.userId);
  print(peticion.body);
}

