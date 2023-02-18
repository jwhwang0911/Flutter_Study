typedef ListofInts = List<int>;

ListofInts reverseListOfNumbers(ListofInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(reverseListOfNumbers([1, 2, 3]));
}
