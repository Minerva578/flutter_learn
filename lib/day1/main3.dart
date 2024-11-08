import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: quiz()));
}

class quiz extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(width: 50, height: 50, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.blue,),
              Container(width: 50, height: 50, color: Colors.yellow,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(width: 50, height: 50, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.blue,),
              Container(width: 50, height: 50, color: Colors.yellow,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 50, height: 50, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.blue,),
              Container(width: 50, height: 50, color: Colors.yellow,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 50, height: 50, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.blue,),
              Container(width: 50, height: 50, color: Colors.yellow,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(width: 50, height: 50, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.blue,),
              Container(width: 50, height: 50, color: Colors.yellow,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(width: 50, height: 50, color: Colors.red,),
              Container(width: 50, height: 50, color: Colors.blue,),
              Container(width: 50, height: 50, color: Colors.yellow,)
            ],
          )
        ],
      ),
    );
  }
}