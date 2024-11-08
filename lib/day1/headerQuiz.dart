import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('오필나우', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
          backgroundColor: Colors.blue,
          actions: [
            Icon(Icons.add_alert_rounded),// search icon
            Icon(Icons.apps),
          ],

        ),
      ),
    );
  }
}