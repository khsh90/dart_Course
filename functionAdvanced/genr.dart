void main() {
  const lists = [1, 2, 3];
  const list2 = [1.0, 2.0, 3.0];

  //final forLoop = lists.forEach(print);
  // List<int> mapList = lists.map((x) => x * 10).toList();

  //print(mapList);

  final doublee = tramsform<int, int>(lists, (int x) => x * 2);
  final square = tramsform<double, int>(list2, (x) => x.round());
  print(doublee);
  print(square);
}

//used T only if you want to use any value of funtion , use R and T if you want to use multible types like return int with double values as below
List<R> tramsform<T, R>(List<T> items, R Function(T) f) {
  var result = <R>[];

  for (var item in items) {
    result.add(f(item));
  }
  return result;
}

List<int> doublee(List<int> items) {
  var result = <int>[];

  for (var item in items) {
    result.add(item * 2);
  }
  return result;
}
