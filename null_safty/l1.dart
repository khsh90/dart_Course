import 'dart:math';

void main() {
  // int x = 10;
  // int sign = x >= 10 ? 1 : -1;

  // print(sign);
// -------------------------------------------
  // assertion or bang operator
  // int? mayBehasValue;

  // int x = 10;

  // if (x > 1) {
  //   mayBehasValue = x;
  // }
  // int value =
  //     mayBehasValue!; //this will use if you are sure that it will have value else will run a time run error
  // print(value);
  // /-------------------------------------------------
  // if null operator

  // int? mayBehasValue;

  // int x = -10;

  // if (x > 1) {
  //   mayBehasValue = x;
  // }
  // // int value = mayBehasValue==null?0:mayBehasValue; another way to run this code as below

  // // int value = mayBehasValue ?? 0; //if null print print 0 else print its value
  // // or write it as  this
  // mayBehasValue ??= 0;
  // int value = mayBehasValue;
  // print(value);
  // ---------------------------------------------------------------
  //null safty with collection

  const cities = <String?>['amman', 'madba', null]; //to add null use <String?>

  for (var city in cities) {
    print(city?.toUpperCase());
  }
}
