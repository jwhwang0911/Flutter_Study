void main() {
  print('hello world');

  // --------------LEC 1. ----------------

  var name = 'violet';
  // var는 자바스크립트랑 비슷함.
  // 초기화가 처음 이뤄진 이후에는 반드시 같은 타입으로만 변경 가능
  String name_2 = 'jw';
  // C언어처럼 변수 타입으로 선언 가능
  // 관습적으로 지역 메소드 안에 지역변수를 사용할 때는 var

  // -------------LEC 2. -----------------
  var t; // t는 dynamic type임
  t = 12;
  t = 'test';

  dynamic ty; // ty 도 dynamic
  ty = 12;
  ty = 'name';

  if (ty is String) {
    // 여기서 부터는 ty 가 String이라는 것을 인지함.
  }

  // ------------LEC 3. -----------------
  // null safety => 개발자가 null을 참조할 수 없도록 하는 것
  // 만약할경우 런타임에러를 발생시킴. => 컴파일도중에 잡아야함.
  String? violet = "test"; // nullable String
  violet = null;
  if (violet != null) {
    print(violet.length);
  }
  // 위와 같은 문법. 자바스크립트와 동일하게
  violet?.isNotEmpty;
}

// 세미콜론은 반드시 삽입
// Dart만의 성질이 있어서 (세미콜론을 안붙히는)
