import 'dart:math';

class cascade {
  List<Point> _items = [];

  void moveTo(Point point) => _items = [point];

  void lineTo(Point Point) => _items.add(Point);
}

void main() {
  final  points = cascade();

  // points.moveTo(Point(0, 0));
  // points.lineTo(Point(7, 9));
  // points.lineTo(Point(9, 0));

  //instead of type points each time use .. cacade operator as below
  // ..moveTo(Point(0, 0));
  // ..lineTo(Point(7, 9));
  // ..lineTo(Point(9, 0));
}
