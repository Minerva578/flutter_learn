import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: quiz()));
}

class quiz extends StatelessWidget {
  Widget buildBox() {
    return Row(
      children: [
        Container(width: 50, height: 50, color: Colors.red),
        Container(width: 50, height: 50, color: Colors.blue),
        Container(width: 50, height: 50, color: Colors.yellow)
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildBox()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBox()
            ],
          ),
        ],
      ),
    );
  }
}