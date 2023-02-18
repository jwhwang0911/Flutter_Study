class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print("My name is $name");
  }
}

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print('and I play for $team');
  }
}

enum Team { blue, red }

void main() {
  var player = Player(team: Team.blue, name: "test");
  player.sayHello();
}
