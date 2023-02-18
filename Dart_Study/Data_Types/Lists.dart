void main() {
  var giveMeFive = true;
  var number = [1, 2, 3, 4];
  List<int> numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // collection if
  ];
  print(numbers);
}
