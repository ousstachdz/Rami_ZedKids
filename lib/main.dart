import 'package:flutter/material.dart';
import 'package:zed_kids_v2/prix.dart';
import 'package:zed_kids_v2/items.dart';
import 'package:zed_kids_v2/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.teal[900],
          title: Text(
            'Zed Kids',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent[100],
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey[900],
          child: Result(),
        ),
      ),
    );
  }
}
