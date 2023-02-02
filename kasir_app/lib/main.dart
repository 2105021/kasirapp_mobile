import 'package:flutter/material.dart';
import 'profil.dart';
import 'input.dart';
import 'calculate.dart';
import 'result.dart';
import 'reusable_card.dart';
import 'round_icon_button.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MainHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Kasir Sederhana'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              onDetailsPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profil(),
                  ),
                );
              },
              accountName: Text('Nur Budi Nugraha'),
              accountEmail: Text('nurbudinugraha@polindra.ac.id'),
              currentAccountPicture: Hero(
                tag: 'Profile',
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/luffi.jpg'),
                  radius: 50,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainHome(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('Profil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profil(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: InputPage(),
    );
  }
}
