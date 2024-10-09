import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'INFORMACION USUARIO',
        home: Scaffold(
          backgroundColor:(Color.fromARGB(255, 3, 32, 56)),
          appBar: AppBar(title: Text('USUARIO', textAlign: TextAlign.center,)),
          body: Column(children: [
            Container(
              padding:EdgeInsets.all(18),
              decoration:BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                borderRadius: BorderRadius.circular(10),
              ),
              child:Text(
                ('id: 1'),
                Text('name: Leanne Graham'),
                Text('username: Bret'),
                Text('email: Sincere@april.biz'),
                Text('DIRECCION:'),
                Text('street: Kulas Light'),
                Text('suite: Apt. 556'),
                Text('city: Gwenborough'),
                Text('zipcode: 92998-3874'),
                Text('GEO:'),
                Text('lat: -37.3159'),
                Text('lng: 81.1496'),
                Text('COMPANY:'),
                Text('phone: 1-770-736-8031 x56442'),
                Text('website: hildegard.org'),
                Text('name: Romaguera-Crona'),
                Text('catchPhrase: Multi-layered client-server neural-net'),
                Text('bs: harness real-time e-markets'), 
                style: TextStyle(fontSize: 18),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Buscar')),
            CircularProgressIndicator()
          ]),
        )
      );
  }
}
