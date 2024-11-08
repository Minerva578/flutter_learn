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
        body: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
              ),
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 100,
              left: 110,
              child:  Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}