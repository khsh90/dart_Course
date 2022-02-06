// Future<int> countDown(int n) => Future.delayed(Duration(seconds: 1), () => n);

// void main() async {
//   try {
//     print('Count Down');
//     final count10 = await countDown(10);
//     print(count10);
//     final count9 = await countDown(9);
//     print(count9);
//     final count8 = await countDown(8);
//     print(count8);
//     final count7 = await countDown(7);
//     print(count7);
//     final count6 = await countDown(6);
//     print(count6);
//     final count5 = await countDown(5);
//     print(count5);
//     final count4 = await countDown(4);
//     print(count4);
//     final count3 = await countDown(3);
//     print(count3);
//     final count2 = await countDown(2);
//     print(count2);
//     final count1 = await countDown(1);
//     print(count1);
//     final count0 = await countDown(0);
//     print(count0);
//   } catch (err) {
//     print(err);
//   } finally {
//     print('Done');
//   }
// }

// another way with couple of lines

Future<void> countDown(int n) async {
  for (int i = n; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
}

Future<void> main() async {
  await countDown(5);
  print('Done');
}
