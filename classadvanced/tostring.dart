class Points {
  final double a, b;

  const Points(this.a, this.b);
  @override
  String toString() => 'Points($a, $b)';
}

void main() {
  final points = Points(1, 1);

  print(points);
  final list = [Points(5, 6), Points(9, 4)];

  print(list);
}
