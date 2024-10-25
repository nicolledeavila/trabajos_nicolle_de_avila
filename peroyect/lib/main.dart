import 'package:flutter/material.dart';

void main(){
  runApp(app1());
}

class app1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children:[
            //barra de color
            Container(
              child:Center(
                child:(Text(
                  'BUSQUEDA',
                  style: TextStyle(fontSize: 18,
                  color: Colors.white,),
                  )
                ),
              ),
              width:100000,
              height: 50,
              decoration: const BoxDecoration(
              color: Color.fromARGB(255, 10, 3, 105),
              boxShadow :[
                BoxShadow(
                  color: Color.fromARGB(255, 9, 9, 76),
                  blurRadius: 100,
                ), 
              ],
            ),
           ),
            Text(''),
          ]
        ),
      )
    );
  }
}