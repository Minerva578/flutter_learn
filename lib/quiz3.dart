import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Quiz()));
}

class Quiz extends StatelessWidget {
  // 각 색상의 박스를 생성하는 함수
  Widget buildBox(Color color) {
    return Container(width: 50, height: 50, color: color);
  }

  // 3개의 박스를 생성하는 함수
  List<Widget> buildBoxSet() {
    return [
      buildBox(Colors.red),
      buildBox(Colors.blue),
      buildBox(Colors.yellow),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: buildBoxSet()
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: buildBoxSet()
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildBoxSet()
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: buildBoxSet()
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: buildBoxSet()
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buildBoxSet()
          ),
        ],
      ),
    );
  }
}
