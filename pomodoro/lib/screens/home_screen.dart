import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const int maxSeconds = 1500;
  int totalSeconds = maxSeconds;
  bool isPressed = false;
  int totalPomodoros = 0;
  // ignore: non_constant_identifier_names
  late Timer pomodoro_Timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodoros += 1;
        isPressed = false;
        totalSeconds = maxSeconds;
      });
      pomodoro_Timer.cancel();
    } else {
      setState(() {
        totalSeconds--;
      });
    }
  }

  void onStartPressed() {
    pomodoro_Timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isPressed = true;
    });
  }

  void onPausePressed() {
    pomodoro_Timer.cancel();
    setState(() {
      isPressed = false;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split(".").first.substring(
          2,
          7,
        );
  }

  void reset() {
    setState(() {
      totalSeconds = maxSeconds;
      isPressed = false;
      pomodoro_Timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 89,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: IconButton(
                iconSize: 98,
                color: Theme.of(context).cardColor,
                icon: Icon(
                  !isPressed
                      ? Icons.play_circle_outline
                      : Icons.pause_circle_outline,
                ),
                onPressed: !isPressed ? onStartPressed : onPausePressed,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(50)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: reset,
                            child: Container(
                              width: 50,
                              height: 30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .color!
                                    .withOpacity(0.3),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                'Reset',
                                style: TextStyle(
                                  color: Theme.of(context).cardColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('Pomodors',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color)),
                          Text('$totalPomodoros',
                              style: TextStyle(
                                  fontSize: 58,
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color)),
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
