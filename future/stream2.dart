Future<void> main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);

  // print(await stream.first);

  // var numbers = stream.forEach(print);
  var double = await stream
      .map((event) => event * 2)
      .where((event) => event > 2); //it needs for loop

  final result = await double.forEach(print);

  print(result);
}
