void main() {
  print('Total: ${pizzaOrder(pizzaFlavour: ['margarita', 'paproni', 'll'])} JD');
}

double pizzaOrder({required List<String> pizzaFlavour}) {
  var total = 0.0;
  const pizzaType = {
    'margarita': 20.6,
    'paproni': 25,
    'vagtarian': 6,
  };

  for (var order in pizzaFlavour) {
    final price = pizzaType[order];
    if (price != null) {
      total += price;
    } else {
      print('this pizza flavour $order is not available');
    }
  }
  return total;
}
