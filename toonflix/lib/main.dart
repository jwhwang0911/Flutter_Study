import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
  // root = App이라는 이름의 Widget
}

// Class 를 Widget으로 만드려면 3가지 core Widget중 하나를 상속받아야함.
class App extends StatelessWidget {
  // StateLess Widget은 build 이름의 method를 구현해야함
  // Root Widget은 material이나 cupertino이라는 옵션을 return 해야함.
  @override
  Widget build(BuildContext context) {
    // Mobile app은 scaffold가 있어야함 (화면 구조)
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
        ),
        body: Center(child: Text('Hello world')),
      ),
    ); // Google Style App
    // return CupertinoApp() // IOS Style
  }
}

/* 
  Widget은 UI를 만드는 레고블럭[Class]이라고 생각하자
  많은 레고블럭을 합쳐서 하나의 앱을 만드는 거이라고 생각
  Widget은 이미 커뮤니티에서 이미 제공하고 있음.그러니까 다 짜려고하지말고
  찾아볼 생각을 하자
*/
