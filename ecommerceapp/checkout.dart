class Product {
  const Product({required this.id, required this.name, required this.price});

  final int id;
  final String name;
  final double price;
}

class item {
  const item({required this.product, this.quantity = 1});

  final Product product;
  final int quantity;

  double get price => quantity * product.price;
}

class Cart {
  //to do cart item collection;
}