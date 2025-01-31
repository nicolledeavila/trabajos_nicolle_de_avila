import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget{
  const Homescreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('barra de color'),
        backgroundColor: const Color.fromARGB(255, 0, 149, 255),
      ),
      body: Container(
         margin: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
         width: 460,
         height: 450,
         decoration: const BoxDecoration(color: Color.fromARGB(255, 218, 176, 173),
         ),
          child: Container(
            padding: const EdgeInsets.all(90),
            child: DecoratedBox(decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 2),
            )
            ),
            width: 10,
            height: 10,
          ),
      ),
      backgroundColor: const Color.fromARGB(255, 233, 234, 233),
    );
  }
}