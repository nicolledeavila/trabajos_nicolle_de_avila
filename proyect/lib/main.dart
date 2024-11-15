import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyect/peticiones/diseno.dart';  // Asegúrate de que estas importaciones sean correctas
import 'package:proyect/peticiones/errormnsj.dart';
import 'package:proyect/peticiones/loading.dart';
import 'package:proyect/peticiones/peticiones.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String userId = "1"; // ID del usuario a buscar

  Future<User> fetchData(String id) async {
    // Corrigiendo la URL para que el ID sea parte de la ruta correcta
    var url = Uri.https('jsonplaceholder.typicode.com', '/users/$id');
    var respuesta = await http.get(url);

    if (respuesta.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(respuesta.body);
      return User(map); // Creación del objeto User a partir del JSON
    } else {
      throw Exception('Error ${respuesta.statusCode}'); // Manejo de error
    }
  }

  bool bool_isDarkMode = true; // Variable para el modo oscuro

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: bool_isDarkMode
          ? ThemeData(brightness: Brightness.dark)
          : ThemeData(brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Búsqueda de Usuario'),
          backgroundColor: const Color.fromARGB(255, 142, 2, 249),
        ),
        body: FutureBuilder<User>(
          future: fetchData(userId), // Llama a fetchData con el userId
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Loading(); // Muestra un loading mientras espera la respuesta
            } else if (snapshot.hasError) {
              return Errordato(); // Muestra el mensaje de error
            } else if (snapshot.hasData) {
              User post = snapshot.data!; // Obtiene el usuario
              return Success(post: post); // Muestra los datos del usuario
            } else {
              return Center(child: Text("No se encontró ningún usuario.")); // Manejo de caso vacío
            }
          },
        ),
      ),
    );
  }
}
