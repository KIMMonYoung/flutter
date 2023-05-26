import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('AREA'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          TextButton(
            onPressed: () {
              print("Seoul");
            },
            child: Text(
              'Text Button',
              style: TextStyle(fontSize:20),
            ),
            style:  TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor:Colors.blue),
            ),
          TextButton(
            onPressed: () {
              // 버튼 클릭시 required이다.
              print("Busan");
            },
            onLongPress: () {
              // 길게 누르면
              print("text button is long clicked");
            },
            child: Text(
              'Text Button',
              style: TextStyle(fontSize: 20.0), // 텍스트 버튼
            ),
            style: TextButton.styleFrom( // 스타일 폼에서 작성할 수 있음
                primary: Colors.white, // 텍스트 색 바꾸기
                backgroundColor: Colors.blue), // 백그라운드로 컬러 설정
          ),
          TextButton(
            onPressed: () {
              // 버튼 클릭시 required이다.
              print("Ulsan");
            },
            onLongPress: () {
              // 길게 누르면
              print("text button is long clicked");
            },
            child: Text(
              'Text Button',
              style: TextStyle(fontSize: 20.0), // 텍스트 버튼
            ),
            style: TextButton.styleFrom( // 스타일 폼에서 작성할 수 있음
                primary: Colors.white, // 텍스트 색 바꾸기
                backgroundColor: Colors.blue), // 백그라운드로 컬러 설정
          ),
          TextButton(
            onPressed: () {
              // 버튼 클릭시 required이다.
              print("Dae-gu");
            },
            onLongPress: () {
              // 길게 누르면
              print("text button is long clicked");
            },
            child: Text(
              'Text Button',
              style: TextStyle(fontSize: 20.0), // 텍스트 버튼
            ),
            style: TextButton.styleFrom( // 스타일 폼에서 작성할 수 있음
                primary: Colors.white, // 텍스트 색 바꾸기
                backgroundColor: Colors.blue), // 백그라운드로 컬러 설정
          ),
          TextButton(
            onPressed: () {
              // 버튼 클릭시 required이다.
              print("Gang-ju");
            },
            onLongPress: () {
              // 길게 누르면
              print("text button is long clicked");
            },
            child: Text(
              'Text Button',
              style: TextStyle(fontSize: 20.0), // 텍스트 버튼
            ),
            style: TextButton.styleFrom( // 스타일 폼에서 작성할 수 있음
                primary: Colors.white, // 텍스트 색 바꾸기
                backgroundColor: Colors.blue), // 백그라운드로 컬러 설정
          ),
          TextButton(
            onPressed: () {
              // 버튼 클릭시 required이다.
              print("Incheon");
            },
            onLongPress: () {
              // 길게 누르면
              print("text button is long clicked");
            },
            child: Text(
              'Text Button',
              style: TextStyle(fontSize: 20.0), // 텍스트 버튼
            ),
            style: TextButton.styleFrom( // 스타일 폼에서 작성할 수 있음
                primary: Colors.white, // 텍스트 색 바꾸기
                backgroundColor: Colors.blue), // 백그라운드로 컬러 설정
          ),
          TextButton(
            onPressed: () {
              // 버튼 클릭시 required이다.
              print("Je-ju");
            },
            onLongPress: () {
              // 길게 누르면
              print("text button is long clicked");
            },
            child: Text(
              'Text Button',
              style: TextStyle(fontSize: 20.0), // 텍스트 버튼
            ),
            style: TextButton.styleFrom( // 스타일 폼에서 작성할 수 있음
                primary: Colors.white, // 텍스트 색 바꾸기
                backgroundColor: Colors.blue), // 백그라운드로 컬러 설정
          ),
        ],
      ),

      ),

    );
  }
}