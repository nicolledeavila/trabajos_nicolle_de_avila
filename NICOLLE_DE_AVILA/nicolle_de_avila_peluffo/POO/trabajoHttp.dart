import 'package:http/http.dart' as http;
import 'dart:convert';

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

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/users/1');
  var respuesta = await http.get(url);
  Map<String, dynamic> map = jsonDecode(respuesta.body);
  print('Response status: ${respuesta.statusCode}');
  
  User user = User(map);
  print("Este es User:");
  print(user.id);
  print(user.name);
  print(user.email);
  print(user.username);

  Address address = new Address(map['address']);
  print("Este es Address:");
  print(address.city);
  print(address.street);
  print(address.zipcode);
  print(address.suite);
  
  Geo geo = new Geo(map['address']['geo']);
  print("Esta es Geo:");
  print(geo.lat);
  print(geo.lng);

  Company company = new Company(map['company']);
  print("Este es Company:");
  print(company.bs);
  print(company.catchPhrase);
  print(company.name);
}
