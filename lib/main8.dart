import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
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
          title: Text(
              "Allign Widget Example",
              style: TextStyle(fontWeight: FontWeight.bold,),
          ),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Align(
              // alignment: Alignment.bottomCenter,
              alignment: Alignment(0.5,0.5),
              child: Text("Hello World",),
            ),
          ),
        ),
      ),
    );
  }
}