String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';
// ??의 left가 null이면 right아니면 그냥 left

void main() {
  capitalizeName('nico');
  // 유저가 파라미터로 null도 넣을 수 있었음 좋겠음
  capitalizeName(null);

  String? name;
  name ??= 'nico'; // name이 null이면 nico로 초기화해주세요
  print(name);
}
