import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Fonts Icons Example'),
        ),
        body: Center(
          child: Icon(
            Icons.star_half,  // 사용할 아이콘 이름
            size: 48.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
