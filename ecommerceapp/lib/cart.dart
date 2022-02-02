import './product.dart';
import './item.dart';

class Cart {
  Map<int, Item> _item = {};

  bool get isEmpty => _item.isEmpty;
  void addItem(Product product) {
    final item = _item[product.id];
    if (item == null) {
      _item[product.id] = Item(product: product, quantity: 1);
    } else {
      _item[product.id] = Item(product: product, quantity: item.quantity + 1);
    }
  }

  double get total => _item.values
      .map((item) => item.price)
      .reduce((value, element) => value + element);

  @override
  String toString() {
    if (_item.isEmpty) {
      return 'NO item in the cart';
    }

    final itemList = _item.values.map((item) => item).join('\n');
    return '$itemList \nTotal:$total JD ';
  }
}
