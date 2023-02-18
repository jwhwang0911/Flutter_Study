void main() {
  late final String name;
  // late은 나중에 초기화 할 수 있는 변수를 만들어줌.
  // print(name); // null safety
  name = 'violet';
  // name = 'test'; // 이건 안됨
  // API 작업할 때 자주 사용할 듯
}
