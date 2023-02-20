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
  List<int> counter = [];

  void onClicked() {
    // setState(() {
    //   counter.add(counter.length);
    // });
    counter.add(counter.length);
  }

  void Decrease() {
    setState(() {
      counter.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Click Count',
                  style: TextStyle(
                    fontSize: 30,
                  )),
              for (var number in counter) Text('$number'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 40,
                    onPressed: onClicked,
                    icon: const Icon(Icons.add_box_rounded),
                  ),
                  IconButton(
                    icon: const Icon(Icons.indeterminate_check_box_rounded),
                    onPressed: Decrease,
                    iconSize: 40,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
