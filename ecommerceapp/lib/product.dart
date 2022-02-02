class Product {
  Product({required this.id, required this.name, required this.price});
  int id;
  double price;
  String name;

  String get displayProduct => '($firstLetter)${name.substring(1)} $price JD';
  String get firstLetter => name.substring(0, 1);
}
