import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext){ 
    return MaterialApp(
      title:'hola',
      theme: ThemeData(primarySwatch: Colors.orange,),
      home:myhomePage(),
    );
  }

 class myhomePage extends StatefulWidget{
  @override
   _myhomePageState();
 }
 class _myhomePageState extends State<myhomePage>{

 }

}