import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              // 로컬 폰트 사용
              Text("Hello with Custom Font",
              style: TextStyle(
                fontFamily: "Sunflower",
                fontSize: 24.0
                ),
              ),
              // 로컬 이미지 가져 오기
              Image.asset(
                  "assets/images/a.png",
                  width: 200,
                  height: 200,
                fit: BoxFit.cover,
              ),
              // 네트워크 상에 존재하는 이미지 렌더링 방법
              Image.network(
                'https://picsum.photos/200/300',
                width: 300,
                height: 300,

              ),
            ],
          ),
        ),
      ),
    );
  }
}