void main() {
  var l1 = [1, 2, 3, 4];
  var l2 = <double>[1.8, 9.8, 9];

  var intList = getOdd<int>(l1, (x) => x % 2 == 1);
  var doubleList = getOdd<double>(l2, (x) => x % 2 == 1);

  print(intList);
  print(doubleList);
}

// list function (list , function)
// retrive the odd from this list [1,2,3,4] with generic

List<T> getOdd<T>(List<T> numbers, bool Function(T) f) {
  List<T> oddNumbers;
  oddNumbers = numbers.where((x) => f(x)).toList();

  return oddNumbers;
}
