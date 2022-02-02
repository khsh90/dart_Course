import './product.dart';

class Item {
  Item({required this.product, this.quantity = 1});
  Product product;
  int quantity;

  double get price => quantity * product.price;

  @override
  String toString() {
    return '$quantity x ${product.name}';
  }
}
