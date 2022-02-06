Future<String> getOrder() =>
    Future.delayed(Duration(seconds: 2), () => 'Capaatico');

Future<String> getOrder2() =>
    Future.value('expresso'); //will be printed directly

Future<String> getOrder3() => Future.error(
    Exception('out of milk')); //if there is an error wath video 168

void main() async {
  try {
    print('prgram started');
    final order1 =
        await getOrder(); //you can use it future with await while then is hard
    print(order1);
    final order2 = await getOrder2();
    print(order2);
    final order3 = await getOrder3(); //will be printed directly after order1
    print(order3);
  } catch (error) {
    print(error);
  } finally {
    print('work done');
  }
  ;
  ;
}
