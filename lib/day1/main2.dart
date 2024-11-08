import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyHome());
}

// 상태 여부 위젯 선정

// const, final
// const <--- 컴파일 시점에 초기화 되는 코드를 사용
// final <--- 런타임 시점에 초기화 되는 코드를 사용
class MyHome extends StatelessWidget {
  // const 생성자
  const MyHome({super.key});

  // build 메서는 화면에 그림을 그려주는 메서드 이다.
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        // 주축 방향 정렬
        mainAxisAlignment: MainAxisAlignment.center,
        // 교차축 방향 정렬
        crossAxisAlignment: CrossAxisAlignment.center,
        // 자료구조 - 리스트를 나태낸다.
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
            margin: const EdgeInsets.only(bottom: 50),
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.blue,
          ),

        ],
      ),
    );
  }
}


