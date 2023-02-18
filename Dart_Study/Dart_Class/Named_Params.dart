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

  void sayHello() {
    print(
        "Hi my name is $name \n age : $age \n xp : $xp \n team : $team"); // this는 따로 사용하지 않아도 됨
  }
}

void main() {
  var player = Player(
    name: "test",
    xp: 1200,
    team: 'blue',
    age: 21,
  );
  player.sayHello();
}
