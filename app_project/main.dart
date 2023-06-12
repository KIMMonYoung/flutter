import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
        '/screen5': (context) => Screen5(),
        '/screen6': (context) => Screen6(),
        '/screen7': (context) => Screen7(),
        '/screen8': (context) => Screen8(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Example'),
      ),
      body: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen1');
              },
              child: Text('서울'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen2');
              },
              child: Text('인천'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen3');
              },
              child: Text('대전'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen4');
              },
              child: Text('광주'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen5');
              },
              child: Text('대구'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen6');
              },
              child: Text('울산'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen7');
              },
              child: Text('부산'),
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/screen8');
              },
              child: Text('제주'),
            ),
          ),
        ],
      ),
    );
  }
}
class Screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Text('서울 화면'),
      ),
    );
  }
}
class Screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Text('인천 화면'),
      ),
    );
  }
}
class Screen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Text('대전 화면'),
      ),
    );
  }
}
class Screen4 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Text('광주 화면'),
      ),
    );
  }
}
class Screen5 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Text('대구 화면'),
      ),
    );
  }
}
class Screen6 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Text('울산 화면'),
      ),
    );
  }
}
class Screen7 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Text('부산 화면'),
      ),
    );
  }
}
class Screen8 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Text('제주 화면'),
      ),
    );
  }
}
