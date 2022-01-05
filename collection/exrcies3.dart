import 'dart:io';

void main() {
  const pizzaPrices = {'margarirta': 5.5, 'pepproni': 7.5, 'vegterian': 6.5};
  const order = [1,'margarirta'];
  var total = 0.0;

  for (var item in order) {
    var price = pizzaPrices[item];

    if (price != null) {
      total += price;
    } else {
      print('$item pizza is not available');
    }
  }
  print('The total piza price is $total JD ');
}
