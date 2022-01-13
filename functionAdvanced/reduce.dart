void main() {
  var list = [5, 8, 9, 6];

  var result = list.reduce((value, element) => value + element);

  print(result);

  // value :  5 13 22 28
  // element :8  9  6

  // the above explaint how it works
}
