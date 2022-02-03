extension ItrableSum<T extends num> on Iterable<T> {
  //extends to use int or double as num contains them.
  T sum() => reduce((value, element) => (value + element) as T);
}

void main() {
  int l1 = [1, 2, 3].sum(); //to make some works use extentsion
// what if we use as below

  double l2 = [1.0, 2.0, 3.0, 4.9].sum(); //needs generic
  print(l2);
  print(l1);
}
