import 'package:flutter/material.dart';
import './widgets/Button.dart';
import './widgets/cards.dart';

void main() {
  runApp(const App());
  // root = App이라는 이름의 Widget
}

// Class 를 Widget으로 만드려면 3가지 core Widget중 하나를 상속받아야함.
class App extends StatelessWidget {
  const App({super.key});

  // StateLess Widget은 build 이름의 method를 구현해야함
  // Root Widget은 material이나 cupertino이라는 옵션을 return 해야함.
  @override
  Widget build(BuildContext context) {
    // Mobile app은 scaffold가 있어야함 (화면 구조)
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Text(
                'Total balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 22,
                ),
              ),
              const Text(
                '\$5 194 482',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: 'Transfer',
                    bgColor: Colors.amber,
                    textColor: Colors.black,
                  ),
                  Button(
                    text: 'Request',
                    bgColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 75,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Cards(
                dollertype: "Euro",
                bgColor: const Color(0xFF1F2123),
                fontColor: Colors.white,
                moneyAmount: "6 428",
                dollorread: "EUR",
                iconType: Icon(
                  Icons.euro_rounded,
                  color: Colors.white.withOpacity(0.8),
                  size: 88,
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -30),
                child: const Cards(
                  dollertype: "Bitcoin",
                  fontColor: Color(0xFF1F2123),
                  bgColor: Colors.white,
                  moneyAmount: "55 622",
                  dollorread: "BTC",
                  iconType: Icon(
                    Icons.currency_bitcoin,
                    color: Color(0xFF1F2123),
                    size: 88,
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -60),
                child: Cards(
                  dollertype: "Dollar",
                  bgColor: const Color(0xFF1F2123),
                  fontColor: Colors.white,
                  moneyAmount: "9 513",
                  dollorread: "USD",
                  iconType: Icon(
                    Icons.attach_money_outlined,
                    color: Colors.white.withOpacity(0.8),
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
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
