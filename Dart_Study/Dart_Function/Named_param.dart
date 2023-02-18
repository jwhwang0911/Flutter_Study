// String sayHello(String name, int age, String country) {
//   return "Hello $name \n age : $age \n country : $country";
// }

String sayHello({
  String name = 'anon',
  int age = 99,
  String country = 'wakanda',
}) {
  return "Hello $name \n age : $age \n country : $country";
}
// Named Parameters 를 할 때는 Default값을 설정할 수 있음.

// 혹은

String sayHellos({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name \n age : $age \n country : $country";
}

// sayHellos(); 파라미터 부족하게 call을 하는 것을 방지할 수 있음.

void main() {
  print(sayHello(
    age: 12,
    country: 'cuba',
    name: 'nico',
  ));

  print(sayHellos(
    age: 13,
    country: 'cuba',
    name: 'nico',
  ));
}
