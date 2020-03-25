import 'package:flutter/material.dart';
import 'package:mobile/views/Home.dart';
import 'package:mobile/views/Login.dart';
import 'package:mobile/views/Register.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SCRUTER',
      theme: ThemeData(
        primaryColor: Colors.black, 
      ),
      home: Home(title: 'SCRUTER - twoje kino'),
      routes: {
        '/login': (context) => Login(),
        '/register': (context) => Register(),
      },
    );
  }
}

