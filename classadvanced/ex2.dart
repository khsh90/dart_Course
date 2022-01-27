class Points {
  double a, b;

  Points(this.a, this.b);
  @override
  String toString() => 'Points($a,$b)';

  @override
  bool operator ==(covariant Points other) {
    return a == other.a && b == other.b;
  }

  @override
  Points operator +(Points other) {
    return Points(a + other.a, b + other.b);
  }

  @override
  Points operator *(int other) {
    return Points(a * other, b * other);
  }
}

void main() {
  print(Points(5, 1) + Points(4, 9));
  print(Points(5, 1) * 5);
}
