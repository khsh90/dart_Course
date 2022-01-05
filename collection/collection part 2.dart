void main() {
  List cities = ['amman', 'ajloun', 'madaba'];

  print(cities.length);
  print(cities.isEmpty);
  print(cities.isNotEmpty);
  cities.add('mafraq');
  cities.insert(1, 'zarqa');
  print(cities.indexOf('zarqa'));
  cities.removeAt(1);
  cities.remove('amman');
  print(cities.contains('zarqa'));
  cities.clear();
  print(cities);
}
