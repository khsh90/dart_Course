import 'dart:math';

abstract class Shape {
  //abstract class could not be intatiated
  double get area;
  double get parameter;
}

class Square extends Shape {
  double side;
  Square(this.side);
  @override
  double get area => side * side;
  double get parameter => 4 * side;
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double get area => pi * radius * radius;
  double get parameter => 2 * pi * radius;
}

void printArea(Shape shape) {
  print(shape.area);
  print(shape.parameter);
}

void main() {
  final shape = [Circle(30), Square(6)];

  // shape.forEach((element)=>printArea(element));
//or just type printarea to short cut the code because it is void like below
  shape.forEach((printArea));
}
