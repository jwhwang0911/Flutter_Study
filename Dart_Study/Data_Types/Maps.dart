void main() {
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  // Typescript의 any = Object

  Map<int, bool> players = {
    1: true,
    2: false,
    3: true,
  };

  print(players);

  // 만약, 형태가 정해져 있는 key 와 value를 가진 자료형을 사용하려면
  // class 가 더 나을 수 있음.
}
