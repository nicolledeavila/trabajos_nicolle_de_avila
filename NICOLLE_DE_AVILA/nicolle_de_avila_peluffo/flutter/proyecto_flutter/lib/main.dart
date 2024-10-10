import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INFORMACIÓN USUARIO',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 16),
        ),
      ),
      home: UserScreen(),
    );
  }
}

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData(); 
  }

  Future<void> _loadData() async {
    await Future.delayed(Duration(seconds: 3)); 
    setState(() {
      _isLoading = false; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil del Usuario'),
      ),
      body: _isLoading 
        ? Center(child: CircularProgressIndicator())
        : Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                UserInfoCard(),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.search),
                  label: Text('Buscar'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}

class UserInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserDetail(title: 'ID:', content: '1'),
            UserDetail(title: 'Nombre:', content: 'Leanne Graham'),
            UserDetail(title: 'Usuario:', content: 'Bret'),
            UserDetail(title: 'Email:', content: 'Sincere@april.biz'),
            SizedBox(height: 20),
            SectionTitle(title: 'DIRECCIÓN'),
            UserDetail(title: 'Calle:', content: 'Kulas Light'),
            UserDetail(title: 'Suite:', content: 'Apt. 556'),
            UserDetail(title: 'Ciudad:', content: 'Gwenborough'),
            UserDetail(title: 'Código Postal:', content: '92998-3874'),
            SizedBox(height: 20),
            SectionTitle(title: 'GEO'),
            UserDetail(title: 'Latitud:', content: '-37.3159'),
            UserDetail(title: 'Longitud:', content: '81.1496'),
            SizedBox(height: 20),
            SectionTitle(title: 'EMPRESA'),
            UserDetail(title: 'Teléfono:', content: '1-770-736-8031 x56442'),
            UserDetail(title: 'Website:', content: 'hildegard.org'),
            UserDetail(title: 'Nombre:', content: 'Romaguera-Crona'),
            UserDetail(title: 'Slogan:', content: 'Multi-layered client-server neural-net'),
            UserDetail(title: 'BS:', content: 'harness real-time e-markets'),
          ],
        ),
      ),
    );
  }
}

class UserDetail extends StatelessWidget {
  final String title;
  final String content;

  UserDetail({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$title ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Expanded(
            child: Text(
              content,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.teal[700],
        ),
      ),
    );
  }
}
