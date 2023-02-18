class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  // Named 생성자
  Player.createBluePlayer({required String name, required int age})
      : this.age = age,
        this.name = name,
        this.team = "blue",
        this.xp = 0;

  void sayHello() {
    print(
        "Hi my name is $name \n age : $age \n xp : $xp \n team : $team"); // this는 따로 사용하지 않아도 됨
  }
}

void main() {
  var player = Player.createBluePlayer(
    name: "test",
    age: 21,
  );
  player.sayHello();
}
