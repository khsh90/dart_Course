import 'dart:io';

import 'lib/product.dart';
import 'lib/item.dart';
import 'lib/cart.dart';

void main() {
  final cart = Cart();
  while (true) {
    stdout.write('what do you want ?(a)dd item ,(v)iew cart , (c)heck out \n');
    final userChice = stdin.readLineSync();

    if (userChice == 'a') {
      final products = chooseProduct();
      if (products != null) {
        print(cart);
      } else {
        print('invalid selection');
      }
    }
    if (userChice == 'v') {
      print(cart);
    }
    if (userChice == 'c') {
      // do task
    }
  }
}

final allProducts = [
  Product(id: 1, name: 'apple', price: 2),
  Product(id: 2, name: 'orange', price: 0.5),
  Product(id: 3, name: 'melon', price: 1.6),
  Product(id: 4, name: 'banana', price: 4),
  Product(id: 5, name: 'kiwi', price: 2.1),
];

Product? chooseProduct() {
  final products =
      allProducts.map((product) => product.displayProduct).join('\n');
  stdout.write('$products \n Waht is your choice: ');

  final userChoice = stdin.readLineSync();

  for (var product in allProducts) {
    if (userChoice == product.firstLetter) {
      return product;
    }
  }
}













//loop
// what do you want ?(a)dd item ,(v)iew cart , (c)heck out 
// if answer equal a then : 
// show  all items with price 
// let user choose which item want 
// after user choose print the user the item quantity with name and its total price , 

// if equal v
// show the user quantity and items with all total price

// if equal  c , 
// print total price then brak the loop=>,if less print no enough menoy if no item print no items selected 
