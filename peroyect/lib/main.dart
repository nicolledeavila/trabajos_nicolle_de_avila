import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main(){
  runApp(app1());
}

class app1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<app1>{
  Future<User>? _futureUser;
  final TextEditingController _controller = TextEditingController();

  Future<User> fetchUser(int id) async {
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/$id');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    return User(response.body as Map<String, dynamic>);
  } else {
    throw Exception('como que no existe ¯\\_(ツ)_/¯');
  }
}


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'placeHolder',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
         padding: const EdgeInsets.all(0.0),
         child: Column(
          
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
              width:1000000,
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
           SizedBox(height: 50),
            TextField(
              controller: _controller,
                decoration: InputDecoration(labelText: 'Ingresa ID'),
                keyboardType: TextInputType.number,
            ),
            ElevatedButton(
                onPressed: () {
                  int id = int.tryParse(_controller.text) ?? 0;
                  if (id > 0) {
                    setState(() {
                      _futureUser = fetchUser(id);
                    });
                  }
                },
                child: Text('Buscar'),
              ),
              _futureUser == null
                  ? Container()
                  : FutureBuilder<User>(
                      future: _futureUser,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        } else if (snapshot.hasData) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 20),
                              Text('Name: ${snapshot.data!.name}'),
                              Text('Username: ${snapshot.data!.username}'),
                              Text('Email: ${snapshot.data!.email}'),
                              Text('Phone: ${snapshot.data!.phone}'),
                              Text('website: ${snapshot.data!.website}'),
                              Text('Company: ${snapshot.data!.company!.name}'),
                              Text('address: ${snapshot.data!.address!.city}'),
                              Text('Geo: ${snapshot.data!.address!.geo}'),
                            ],
                          );
                        } else {
                          return Text('No se encontró el usuario');
                        }
                      },
                    ),
          ]
         ),
        ),
      )
    );
  }
}
class User {
  String? name;
  String? username;
  String? email;
  int? id;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  User(Map<String, dynamic> map) {
    name = map['name'];
    username = map['username'];
    email = map['email'];
    id = map['id'];

    Map address = map['address'];
    this.address = Address(address);

    phone = map['phone'];
    website = map['website'];
    Map company = map['company'];
    this.company = Company(company);
  }

  @override
  String toString() {
    return "ID: $id, "
        "NAME: $name, "
        "USERNAME: $username,"
        "EMAIL: $email,"
        "$address, "
        "PHONE: $phone, "
        "WEBSITE: $website, "
        "$company. ";
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map company) {
    name = company['name'];
    catchPhrase = company['catchPhrase'];
    bs = company['bs'];
  }

  @override
  String toString() {
    return "NAME: $name, "
        "CATCHPHRASE: $catchPhrase,"
        "BS: $bs.";
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map address) {
    street = address['street'];
    suite = address['suite'];
    city = address['city'];
    zipcode = address['zipcode'];

    Map geo = address['geo'];
    this.geo = Geo(geo);
  }
  @override
  String toString() {
    return "STREET $street, "
        "SUITE $suite, "
        "CITY: $city, "
        "ZIPCODE: $zipcode, "
        "${this.geo}.";
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo(Map geo) {
    lat = geo['lat'];
    lng = geo['lng'];
  }
  @override
  String toString() {
    return "LAT: $lat, "
        "LNG: $lng";
  }
}
