class Resturant {
  final String name;
  final String cuisine;
  final List<double> rating;

  const Resturant(
      {required this.name, required this.cuisine, required this.rating});

  double get totalRating => rating.reduce((value, element) => value + element);
  double get avgRating =>
      rating.reduce((value, element) => (value + element)) / rating.length;
}

void main() {
  final resturant1 =
      Resturant(name: '4Season', cuisine: 'all types', rating: [100, 100, 100]);

  print(resturant1.totalRating);
  print(resturant1.avgRating);
}
