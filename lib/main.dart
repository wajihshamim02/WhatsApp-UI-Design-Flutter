import 'package:demo/yo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Ui Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Yo()
    );
  }
}

