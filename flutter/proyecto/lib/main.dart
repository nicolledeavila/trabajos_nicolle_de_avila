<<<<<<< HEAD
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyect/peticiones/diseno.dart';
import 'package:proyect/peticiones/loading.dart';
import 'package:proyect/peticiones/peticiones.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bool bool_isDarkMode = true;
  
  final GlobalKey<_UserSearchWidgetState> userSearchKey = GlobalKey();


  Future<User> fetchData(String id) async {
    var url = Uri.https('jsonplaceholder.typicode.com', '/users/$id');
    var respuesta = await http.get(url);

    if (respuesta.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(respuesta.body);
      return User(map);
    } else {
      throw Exception('404');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: bool_isDarkMode
          ? ThemeData(brightness: Brightness.dark)
          : ThemeData(brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Búsqueda de Usuario'),
          backgroundColor: const Color.fromARGB(255, 142, 2, 249),
        ),
        body: UserSearchWidget(
          key: userSearchKey,
          fetchData: fetchData,
        ),
      ),
    );
  }
}

class UserSearchWidget extends StatefulWidget {
  final Future<User> Function(String) fetchData;

  UserSearchWidget({required Key key, required this.fetchData}) : super(key: key);

  @override
  _UserSearchWidgetState createState() => _UserSearchWidgetState();
}

class _UserSearchWidgetState extends State<UserSearchWidget> {
  String userId = "1"; // ID de usuario predeterminado para la primera búsqueda
  late Future<User> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = widget.fetchData(userId); // Realiza la primera búsqueda
  }

  void searchUser() {
    setState(() {
      futureUser = widget.fetchData(userId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: (value) {
                    userId = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Ingrese ID de Usuario',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: searchUser, // Llama a la búsqueda con el nuevo ID
              ),
            ],
          ),
        ),
        Expanded(
          child: FutureBuilder<User>(
            future: futureUser,
            builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Loading();
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.hasData) {
                User post = snapshot.data!;
                return Success(post: post);
              } else {
                return Center(child: Text('No hay datos disponibles'));
              }
            },
          ),
        ),
      ],
    );
  }
}


=======
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
>>>>>>> 637da75a2ab5ce1cd107e84a002c263c8661ef64
