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
          'https://miro.medium.com/v2/da:true/resize:fit:1200/0*U0Jwe2Gm5mdYBGCv', 
          width: 400.00,
          
        ),
        Text(post.phone! as String, style: TextStyle(fontSize: 26.0)), 
        Text(post.toString()),
        Row(children: [
          
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        )
        ],
    );
  }
}
