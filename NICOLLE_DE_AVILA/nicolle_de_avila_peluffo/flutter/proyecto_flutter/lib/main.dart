import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<User>? _futureUser;
  final TextEditingController _controller = TextEditingController();

  Future<User> fetchUser(int id) async {
    var url = Uri.https('jsonplaceholder.typicode.com', 'users/$id');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return User(jsonDecode(response.body));
    } else {
      throw Exception('Algo salió mal');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlaceHolder',
      home: Scaffold(
        appBar: AppBar(title: Text('User')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name: ${snapshot.data!.name}'),
                              Text('Username: ${snapshot.data!.username}'),
                              Text('Email: ${snapshot.data!.email}'),
                              Text('Phone: ${snapshot.data!.phone}'),
                              Text('website: ${snapshot.data!.website}'),
                              Text('Company: ${snapshot.data!.company}'),
                              Text('address: ${snapshot.data!.address}'),
                              Text('Geo: ${snapshot.data!.address!.geo}'),
                              


                            ],
                          );
                        } else {
                          return Text('No se encontró el usuario');
                        }
                      },
                    ),
            ],
          ),
        ),
      ),
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

 User(Map<String, dynamic> map){
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
  String toString(){
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
  String toString(){
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
    this.geo= Geo(geo);
  }
  @override
  String toString(){
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