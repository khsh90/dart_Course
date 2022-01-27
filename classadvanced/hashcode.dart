import 'package:equatable/equatable.dart';

class Points extends Equatable {
  double a, b;

  Points(this.a, this.b);

  @override
  bool? get stringify => true;  //use this one instead of use the below 
  // @override
  // String toString() => 'Points($a,$b)';

  @override
  List<Object?> get props => [a, b];  //use this one instead of below to return true, 

  // @override
  // bool operator ==(covariant Points other) {
  //   return a == other.a && b == other.b;
  // }

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
  print(Points(8, 5) == Points(8, 5));

  print(Points(5, 6));
  print(Points(5, 1) + Points(4, 9));
  print(Points(5, 1) * 5);
}
