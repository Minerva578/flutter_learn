import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("로그인", style: TextStyle(fontSize: 24.0)),  // AppBar 제목 설정
          backgroundColor: Color(0xFFD97726),  // AppBar 배경색 설정
          elevation: 0,  // AppBar 그림자 제거
        ),
        backgroundColor: Color(0xFFFEF9F6),  // 배경색을 #fff1e5로 설정
        body: Center(
          child: SingleChildScrollView(  // ScrollView로 감싸기
            child: Column(
              mainAxisSize: MainAxisSize.min, // 자식들의 크기만큼만 Column 크기 조정
              crossAxisAlignment: CrossAxisAlignment.center, // Column 안에서 수평 중앙 정렬
              children: [
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: SvgPicture.asset(
                        'assets/images/flutter_icon.svg',  // SVG 파일 경로
                        width: 100,  // 아이콘 크기
                        height: 100,
                        color: Colors.blue,  // 아이콘 색상
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),  // 아이콘과 입력창 사이의 간격

                // 이메일 입력창
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0), // 좌우 여백 추가
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Padding( // Padding을 추가하여 아이콘 크기 조정
                        padding: EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/images/mail_icon.svg',  // 이메일 아이콘 SVG 경로
                          width: 24,  // 아이콘 크기
                          height: 24,
                          color: Color(0xFFEAA56C),  // 아이콘 색상 설정 (선택적으로 변경)
                        ),
                      ),
                      labelText: "이메일",
                      hintText: "example@domain.com",
                      fillColor: Color(0xFFFFDDC2),  // 배경색 수정: #ffddc2
                      filled: true,  // 배경색을 적용하려면 true로 설정
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEAA56C), // 기본 테두리 색상: #eaa56c
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFD97726), // 포커스 시 테두리 색상: #d97726
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),  // 이메일 입력창과 비밀번호 입력창 사이의 간격

                // 비밀번호 입력창
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0), // 좌우 여백 추가
                  child: TextField(
                    obscureText: true,  // 비밀번호 입력시 텍스트를 숨김
                    decoration: InputDecoration(
                      prefixIcon: Padding( // Padding을 추가하여 아이콘 크기 조정
                        padding: EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/images/lock_icon.svg',  // 비밀번호 아이콘 SVG 경로
                          width: 24,  // 아이콘 크기
                          height: 24,
                          color: Color(0xFFEAA56C),  // 아이콘 색상 설정
                        ),
                      ),
                      labelText: "비밀번호",
                      hintText: "비밀번호를 입력하세요",
                      fillColor: Color(0xFFFFDDC2),  // 배경색 수정: #ffddc2
                      filled: true,  // 배경색을 적용하려면 true로 설정
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFEAA56C), // 기본 테두리 색상: #eaa56c
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFD97726), // 포커스 시 테두리 색상: #d97726
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),  // 비밀번호 입력창과 로그인 버튼 사이의 간격

                // 로그인 버튼
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // 로그인 버튼 클릭 시 액션을 여기에 작성
                      print("로그인 버튼 클릭됨");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFD97726),  // 버튼 색상
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),  // 버튼 높이와 가로 길이
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),  // 더 둥글게 설정
                      ),
                    ),
                    child: Text(
                      '로그인',  // 버튼 텍스트
                      style: TextStyle(
                        color: Colors.white,  // 버튼 텍스트 색상
                        fontSize: 16.0,  // 버튼 텍스트 크기
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),  // 로그인 버튼과 TextButton 사이의 간격

                // 비밀번호를 잊으셨나요? 문구
                TextButton(
                  onPressed: () {
                    // "비밀번호를 잊으셨나요?" 버튼 클릭 시 액션
                    print("비밀번호를 잊으셨나요? 클릭됨");
                  },
                  child: Text(
                    '비밀번호를 잊으셨나요?',  // 텍스트
                    style: TextStyle(
                      color: Color(0xFFD97726),  // 텍스트 색상
                      fontSize: 14.0,  // 텍스트 크기
                    ),
                  ),
                ),
                SizedBox(height: 20),  // 비밀번호를 잊으셨나요?와 간격

                // 계정이 없으신가요? 문구와 회원가입 버튼
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "계정이 없으신가요?",  // 문구
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF8D8D8D),  // 회색 텍스트
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // 회원가입 버튼 클릭 시 액션
                          print("회원가입 버튼 클릭됨");
                        },
                        child: Text(
                          '회원가입',  // 버튼 텍스트
                          style: TextStyle(
                            color: Color(0xFFD97726),  // 텍스트 색상
                            fontSize: 14.0,  // 버튼 텍스트 크기
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),  // 추가적인 여백
                const Divider(), // 구분선 추가
                const SizedBox(height: 24.0),
                // 구글 로그인 버튼
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // 구글 로그인 버튼 클릭 시 액션
                      print("구글 로그인 버튼 클릭됨");
                    },
                    icon: const Icon(Icons.g_mobiledata),  // 구글 아이콘
                    label: const Text('Google로 로그인'),  // 버튼 텍스트
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,  // 버튼 배경색: 흰색
                      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),  // 버튼 높이와 가로 길이
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),  // 둥글게 설정
                        side: BorderSide(color: Colors.grey),  // 테두리 색상 설정
                      ),
                      foregroundColor: Colors.black,  // 텍스트 색상 설정
                    ),
                  ),
                ),
                SizedBox(height: 50),  // 추가적인 여백
              ],
            ),
          ),
        ),
      ),
    );
  }
}
