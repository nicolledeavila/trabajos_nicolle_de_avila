import 'package:flutter/material.dart';
import 'package:proyect/peticiones/peticiones.dart';

class Success extends StatelessWidget {
  final User post;

  Success({required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0), // Espacio alrededor del contenido
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea los textos a la izquierda
        children: [
          SizedBox(height: 20.0),
          Image.network(
            'https://miro.medium.com/v2/da:true/resize:fit:1200/0*U0Jwe2Gm5mdYBGCv',
            width: 300.0,
          ),
          SizedBox(height: 1.0),
          Text(
            'Nombre:',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            post.name ?? "Nombre no disponible",
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Email:',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            post.email ?? "Email no disponible",
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Teléfono:',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            post.phone ?? "Teléfono no disponible",
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Dirección:',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            post.address?.toString() ?? "Dirección no disponible", // Asegúrate de que la clase Address tenga un método toString
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Icon(Icons.favorite),
              Icon(Icons.audiotrack),
              Icon(Icons.beach_access),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ],
      ),
    );
  }
}
