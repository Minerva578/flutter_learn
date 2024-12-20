import 'package:flutter/material.dart';

void main() {
  runApp(MyApp8());
}

class MyApp8 extends StatefulWidget {
  const MyApp8({super.key});

  @override
  State<MyApp8> createState() => _MyApp8State();
} // end of class

class _MyApp8State extends State<MyApp8> {
  // Form 위젯 만들어 보기
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _password = '';
  String _errorMessage = '';

  // 멤버 함수 만들어보기
  void _submitForm() {
    print('_formKey.currentState!.validate() : ${_formKey.currentState!.validate()}');
    if(_formKey.currentState!.validate()) {
      // TextFormField --> validator 호출 --> 모두 통과 하면 true 를 반환 한다.

      // 다음단계 --> onSaved 메서드를 실행 시킨다.
      _formKey.currentState!.save(); // 각각에 formfield onSaved 메서드 호출 됨
      setState(() {
        _errorMessage = '';  // 상태 변경 처리
        // 변수안에 값 확인 -->
        print('_name : $_name');
        print('_email : $_email');
        print('_password : $_password');

        // 통신 요청
        //http.get(~);
        //http.post(~);
        // 응답 받아서 화면 이동 처리 , 메세지 던져 주기

      });
    } else {
      setState(() {
        _errorMessage = '필수값들을 입력하시오';
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Form Example'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          // form 위젯은 위젯들을 구분할 수 있는 키가 필요하다.
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'name',
                    errorStyle: TextStyle(color: Colors.blue, fontSize: 10),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '이름을 입력하세요';
                    }
                    return null;
                  },
                  // value 매개변수 값이 null 이 될 수 있다.
                  onSaved: (value) {
                    // value! 강제 null 아니라고 명시 함
                    _name = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'email',
                    errorStyle: TextStyle(color: Colors.blue, fontSize: 10),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '이메일을 입력하세요';
                    }
                    return null;
                  },
                  // value 매개변수 값이 null 이 될 수 있다.
                  onSaved: (value) {
                    // value! 강제 null 아니라고 명시 함
                    _email = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'password',
                    errorStyle: TextStyle(color: Colors.blue, fontSize: 10),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '비밀번호을 입력하세요';
                    }
                    return null;
                  },
                  // value 매개변수 값이 null 이 될 수 있다.
                  onSaved: (value) {
                    // value! 강제 null 아니라고 명시 함
                    _password = value!;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _submitForm, // 코드 축약
                  child: Text('Submit'),
                ),
                const SizedBox(height: 20),
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} // end of class
