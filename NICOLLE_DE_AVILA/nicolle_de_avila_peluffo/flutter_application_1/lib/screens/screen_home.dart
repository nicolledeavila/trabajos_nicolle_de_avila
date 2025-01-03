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
         margin: const EdgeInsets.only(top:10,left: 40),
         width: 400,
         height: 350,
         decoration: const BoxDecoration(color: Color.fromARGB(255, 218, 176, 173)),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: const Row(
              children: [
                CircleAvatar(
                 backgroundColor:  Colors.blue,
                  child: Text('j'),
                ), SizedBox(
                  width: 10,
                ),
                Text('ni',
                style: TextStyle(color: Color.fromARGB(255, 205, 0, 0)),),
                Text('co', style:TextStyle(fontSize: 20),),
                Text('lle'),
              ],
            ),
          ),
      ),
      backgroundColor: const Color.fromARGB(255, 233, 234, 233),
    );
  }
}