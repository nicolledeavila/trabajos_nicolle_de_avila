import 'package:flutter/material.dart';
import 'package:proyect/peticiones/peticion.dart';


class Success extends StatelessWidget {
  User post;

  Success({required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.0,),
        Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', 
          width: 300.0,
        ),
        Text(post.address! as String, style: TextStyle(fontSize: 26.0)), 
        Text(post.toString()),
        Row(children: [
          Icon(Icons.favorite),
          Icon(Icons.audiotrack),
          Icon(Icons.beach_access)
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        )
        ],
    );
  }
}
