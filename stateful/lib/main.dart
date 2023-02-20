import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                icon: const Icon(Icons.remove_red_eye),
                onPressed: toggleTitle,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  // build 메소드 전에 실행됨.
  // API관련 작업을 할 때에 주로 사용.
  @override
  void initState() {
    print('Init');
    super.initState();
  }

  // API 업데이트나 이벤트 리스터를 구독 취소하거나 등등
  // 취소할 떄 사용. 위젯이 remove되기 이전에
  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  /*
  BuildContext는 부모의 요소에 접근할 수 있게 해줌
  context는 Text(MyLargeTitle)이전에 있는 모든
  상위요소들에 대한 정보를 가지고 있음
  */
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
