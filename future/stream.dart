Future<int> sumNumWithFor(Stream<int> stream) async {
  int sum = 0;

  await for (int num in stream) {
    sum += num;
  }

  return sum;
}

Future<int> sumNumWithReduce(Stream<int> stream) async {
  return await stream.reduce((previous, element) => previous + element);
}

Stream<int> st(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
    yield i; //yeild like await
  }
}

Iterable<int> it(int n) sync* {
  for (var i = 0; i < n; i++) {
    yield i;
  }
}

Future<void> main() async {
// think with stream as an itrable data

  final stream1 = Stream.fromIterable([1, 2, 3, 4]);
  final stream2 = st(6);
  // final Stream3 = it(6);

  //final sum1 = sumNumWithFor(stream);
  // final sum2 = await sumNumWithReduce(stream1);
  // print(sum2);
  // ---------------------------------------

  // final sum3 = await sumNumWithReduce(stream2);
  // print(sum3);
// --------------------------------------------
}
