import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyect/peticiones/diseno.dart';
import 'package:proyect/peticiones/loading.dart';
import 'package:proyect/peticiones/peticion.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
    
 Future<User> fetchData() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users/1');
    var respuesta = await http.get(url);
    
    if (respuesta.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(respuesta.body);
      return User(respuesta.body as Map<String, dynamic>);
    } else {
      throw Exception('404');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder<User>(
          future: fetchData(),
         builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Loading();

            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));  
            } else {
              User post = snapshot.data!;
              return Success(post: post);
            }
          },
        ),
      ),
    );
  }
}