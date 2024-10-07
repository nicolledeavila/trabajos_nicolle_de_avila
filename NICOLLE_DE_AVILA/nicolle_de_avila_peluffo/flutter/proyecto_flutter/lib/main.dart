import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'INFORMACION USUARIO',
        home: Scaffold(
          appBar: AppBar(title: Text('USUARIO')),
          body: Column(children: [
            Text('id: 1'),
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
            ElevatedButton(onPressed: () {}, child: Text('Buscar')),
            CircularProgressIndicator()
          ]),
        ));
  }
}
