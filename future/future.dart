Future<String> getOrder() => Future.delayed(
    Duration(seconds: 2), () => 'Capaatico'); //'then' will get this value
// or throw an error :
// Future.delayed(
//     Duration(seconds: 2),
//     () => throw Exception(
//         'no milk'));
//the on catch below will get this error and print it

// void main() {
//   print('program startes');
//   getOrder()
//       .then(
//           (value) => print('your order is :value')) //then used to get the value
//       .catchError((onError) => print(onError)) //if any error will appera
//       .whenComplete(
//           () => print('Done')); //when above finished will excute this one
// }

// the better an practical way is use async and await , becuase if you want  to use multible future will be hard in above method ,to know more watch video 167

void main() async {
  try {
    print('prgram started');
    final order1 =
        await getOrder(); //you can use it future with await while then is hard
    print(order1);
    final order2 = await getOrder();
    print(order2);
    final order3 = await getOrder();
    print(order3);
  } catch (error) {
    print(error);
  } finally {
    print('work done');
  }
  ;
  ;
}
