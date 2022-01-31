import 'dart:io';

class Product {
  const Product({required this.id, required this.name, required this.price});

  final int id;
  final String name;
  final double price;

  String get displaName => '($firstLetter)${name.substring(1)} ${price} JD';
  String get firstLetter => '${name.substring(0, 1)}';
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

final allProducts = [
  Product(id: 1, name: 'apple', price: 2),
  Product(id: 2, name: 'orange', price: 0.5),
  Product(id: 3, name: 'melon', price: 1.6),
  Product(id: 4, name: 'banana', price: 4),
  Product(id: 5, name: 'kiwi', price: 2.1),
];
void main() {
  while (true) {
    stdout.write(
        'What do you want to do ?(v)iew items , (a)dd item , (c)heckout: ');

    final answer = stdin.readLineSync();

    if (answer == 'v') {
      // make todo
    } else if (answer == 'a') {
      final product = productsCollections();
      if (product != null) {
        print(product.displaName);
      }
    } else if (answer == 'c') {
      // make todo
    } else {
      print('Please select the corrcet answer');
    }
  }
}

Product? productsCollections() {
  final products = allProducts.map((product) => product.displaName).join('\n');
  stdout.write('avilalbe prodcuts $products \n \n your choice ?\n');

  final userChoice = stdin.readLineSync();

  for (var product in allProducts) {
    if (product.firstLetter == userChoice) {
      return product;
    }
  }
  print('Product not found');
  return null;
}
