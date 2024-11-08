import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp9());
}

class MyApp9 extends StatelessWidget {
  const MyApp9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Center(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Container(
                      color: Colors.yellow,
                      child: Center(child: Text("Hello World")),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Center(child: Text("second item")),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
                child: Center(child: Text("third item")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
