import 'dart:math';

abstract class Shape {
  //abstract class could not be intatiated
  double get area;
  const Shape();
  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];

    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('invalid or missing side property');

      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError('raduis is not correct ');

      default:
        throw UnimplementedError('The type $type is not supported');
    }
  }
}

class Square extends Shape {
  Square(this.side);
  final double side;

  @override
  double get area => side * side;
}

class Circle extends Shape {
  Circle(this.radius);
  final double radius;

  @override
  double get area => pi * radius * radius;
}

void printArea(Shape shape) {
  print(shape.area);
}

void main() {
  final shapesJson = [
    {'type': 'square', 'side': 50.8},
    {'type': 'circle', 'radius': 4.0},
  ];

  final shapeType =
      shapesJson.map((eachShapeJson) => Shape.fromJson(eachShapeJson));

  
  shapeType.forEach(printArea);
}
