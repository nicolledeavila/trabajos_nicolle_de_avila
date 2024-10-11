import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
      return User(response.body as Map);
    } else {
      throw Exception('algo salio mal');
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
                child: Text('vamos'),
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
                            ],
                          );
                        } else {
                          return Text('Valio monda');
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

  User(Map map) {
    name = map['name'];
    username = map['username'];
    email = map['email'];
    id = map['id'];
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;

  Address(Map map) {
    street = map['street'];
    suite = map['suite'];
    city = map['city'];
    zipcode = map['zipcode'];
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo(Map map) {
    this.lat = map['lat'];
    this.lng = map['lng'];
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map map) {
    this.name = map['name'];
    this.catchPhrase = map['catchPhrase'];
    this.bs = map['bs'];
  }
}
