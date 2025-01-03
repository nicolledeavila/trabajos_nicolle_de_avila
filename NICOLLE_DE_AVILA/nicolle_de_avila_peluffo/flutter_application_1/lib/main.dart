import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screen_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const  MyApp({super.key});

  @override

  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app2',
      home: Homescreen(),
    );
  }
}



