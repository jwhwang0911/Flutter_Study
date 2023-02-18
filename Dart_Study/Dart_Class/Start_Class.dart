class Player {
  final String name = "violet";
  int xp = 1500;

  void sayHello() {
    print("Hi my name is $name"); // this는 따로 사용하지 않아도 됨
  }
}

void main() {
  var player = Player();
  player.sayHello();
}
