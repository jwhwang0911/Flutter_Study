// class Player {
//   late final String name;
//   late int xp;

//   Player(String name, int xp) {
//     this.name = name;
//     this.xp = xp;
//   }

//   void sayHello() {
//     print("Hi my name is $name"); // this는 따로 사용하지 않아도 됨
//   }
// }

class Player {
  final String name;
  int xp;

  Player(this.name, this.xp);

  void sayHello() {
    print("Hi my name is $name"); // this는 따로 사용하지 않아도 됨
  }
}

void main() {
  var player = Player("test", 1500);
  player.sayHello();
}
