import 'package:flutter/material.dart';
import 'package:proyect/peticiones/diseno.dart';
import 'package:proyect/peticiones/peticiones.dart';

class Success extends StatelessWidget {
  final User post;

  Success({required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Center(
            child: Image.network(
              'https://miro.medium.com/v2/da:true/resize:fit:1200/0*U0Jwe2Gm5mdYBGCv',
              width: 400.0,
            ),
          ),
          SizedBox(height: 40.0),
          Text(
            'Teléfono: ${post.phone ?? 'Teléfono no disponible'}',
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            'Nombre: ${post.name ?? 'Nombre no disponible'}',
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            'Email: ${post.email ?? 'Email no disponible'}',
            style: TextStyle(fontSize: 20.0),
          ),
          Text(
            'Sitio web: ${post.website ?? 'Sitio web no disponible'}',
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}
