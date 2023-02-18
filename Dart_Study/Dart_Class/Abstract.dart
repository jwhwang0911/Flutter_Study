abstract class Human {
  void walk();
}

enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("My name is $name");
  }

  void walk() {
    print("walking ....");
  }
}

void main() {
  var nico = Player(name: 'nico', xp: XPLevel.beginner, team: Team.red)
    ..name = 'las'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();
}
