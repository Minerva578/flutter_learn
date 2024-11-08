import 'package:flutter/material.dart';

void main() {
  runApp(MyApp7());
}

class MyApp7 extends StatefulWidget {
  const MyApp7({super.key});

  @override
  State<MyApp7> createState() => _MyApp7State();
}

class _MyApp7State extends State<MyApp7> {
  bool? _checkBoxValue = true;
  String _radioValue = 'Option 1';
  int _sliderValue = 0;
  bool? _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp7'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Text('$_checkBoxValue'),
              ),
              const SizedBox(height: 16.0),
              Checkbox(
                value: _checkBoxValue,
                onChanged: (value) {
                  print('value : $value');
                  setState(() {
                    _checkBoxValue = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              Text('Radio Button'),
              Row(
                children: [
                  Radio(
                    value: '축구',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        print("value : $value");
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  Text('축구'),
                  Radio(
                    value: '농구',
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        print("value : $value");
                        _radioValue = value.toString();
                      });
                    },
                  ),
                  Text('농구'),
                ],
              ),
              const SizedBox(height: 16.0),

              // Slider 위젯을 사용
              Column(
                children: [
                  Slider(
                    value: _sliderValue.toDouble(),
                    min: 0,
                    max: 100,
                    divisions: 100,
                    label: '$_sliderValue',
                    onChanged: (double value) {
                      setState(() {
                        _sliderValue = value.toInt();
                      });
                    },
                  ),
                  // 슬라이더 값 표시
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      '슬라이더 값: $_sliderValue',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),

              // Switch 위젯을 사용 (Column으로 배치)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,  // 수직 정렬
                children: [
                  Switch(
                    value: _switchValue ?? false,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                  // Switch 상태 표시
                  Text(
                    '스위치 상태: ${_switchValue == true ? "켜짐" : "꺼짐"}',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
