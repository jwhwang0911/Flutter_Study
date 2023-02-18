class Player {
  final String name;
  int xp;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name \n xp : $xp \n team : $team");
  }
}

void main() {
  var apiData = [
    {
      "name": "test1",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "test2",
      "team": "blue",
      "xp": 0,
    },
    {
      "name": "test3",
      "team": "red",
      "xp": 0,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
