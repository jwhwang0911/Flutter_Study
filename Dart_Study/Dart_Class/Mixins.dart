class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}

// Mixins 는 생성자가 없는 class
class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuuuuun");
  }
}

class Tall {
  final double height = 191.9;
}

enum Team { blue, red }

void main() {
  var player = Player(team: Team.blue);
  player.runQuick();
}
