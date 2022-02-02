import 'dart:io';
import './lib/cart.dart';
import './lib/product.dart';

void main() {
  final cart = Cart();
  while (true) {
    stdout.write('what do you want ?(a)dd item ,(v)iew cart , (c)heck out \n');
    final userChice = stdin.readLineSync();

    if (userChice == 'a') {
      final products = chooseProduct();
      if (products != null) {
        cart.addItem(products);
        print(cart);
      }
    }
    if (userChice == 'v') {
      print(cart);
    }
    if (userChice == 'c') {
      if (checkOut(cart)) {
        break;
      }
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
    } else {
      print('Please enter a valid chice');
      return null;
    }
  }
}

bool checkOut(Cart cart) {
  if (cart.isEmpty) {
    print('no item in cart');
    return false;
  }
  final total = cart.total;
  // -------------------------------
  stdout.write('Total :$total\n please enter cash:');
  final line = stdin.readLineSync();
  if (line == null) {
    return false;
  }
  // ----------------------------

  final paid = double.tryParse(line);
  if (paid == null) {
    print('please enter a valid amount');
    return false;
  } else if (paid >= total) {
    final change = (paid - total).toStringAsFixed(2);
    print('Change:$change JD');
    return true;
  } else {
    print('no enough cash');
    return false;
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
