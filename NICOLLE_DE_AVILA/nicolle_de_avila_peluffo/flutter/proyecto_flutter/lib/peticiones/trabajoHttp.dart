import 'package:http/http.dart' as http;
import 'dart:convert';

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



void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/users/1');
  var respuesta = await http.get(url);
  Map<String, dynamic> map = jsonDecode(respuesta.body);
  print('Response status: ${respuesta.statusCode}');
  
 User user = User(map);
  print("Este es User:");
  print(user);
  
  print("Este es Address:");
  print(user.address);

  print("Esta es Geo:");
  print(user.address?.geo);

  print("Este es Company:");
  print(user.company);
 
}
