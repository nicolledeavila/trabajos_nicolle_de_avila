import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyect/peticiones/diseno.dart';
import 'package:proyect/peticiones/loading.dart';
import 'package:proyect/peticiones/peticion.dart';
import 'package:source_span/src/colors.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  bool bool_isDarkMode = true; 

 Future<User> fetchData() async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users/1');
    var respuesta = await http.get(url);
    
    if (respuesta.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(respuesta.body);
      return User(map);
    } else {
      throw Exception('404');
    }
  }
  
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: bool_isDarkMode?ThemeData(brightness: Brightness.dark):ThemeData(brightness: Brightness.light),
      home: Scaffold(
        appBar:AppBar(
          centerTitle: true,
          title: Text('BUSQUEDA USUARIO'),
          backgroundColor:const Color.fromARGB(255, 142, 2, 249),
        ),
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