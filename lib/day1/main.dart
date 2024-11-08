import 'package:flutter/material.dart';

// 코드의 시작점
void main() {
  runApp(const MyApp());
}

// 상태기반으로 위젯을 분류 한다.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      margin: EdgeInsets.symmetric(vertical: 100, horizontal: 0),
      child: Center(
        child: Text('안녕 나의 위젯~', textDirection: TextDirection.ltr),
      ),
    );
  }
}
