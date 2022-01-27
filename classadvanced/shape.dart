import 'dart:math';

abstract class Shape {
  //abstract class could not be intatiated
  double get area;
}

class Square extends Shape {
  double side;
  Square(this.side);
  @override
  double get area => side * side;
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final square = Square(5);
  final circle = Circle(5);
  //or like this because circle is subtype of super class
  final Shape circle2 = Circle(10);
  print(circle.area);

  print(square.area);

  printArea(circle);
  printArea(circle2);

  final shape = [//
Circle(30), 
Square(6)
  ];

 // shape.forEach((element)=>printArea(element));
//or just type printarea to short cut the code because it is void like below
shape.forEach((printArea)) ;
}
