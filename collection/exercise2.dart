void main() {
  const a = {1, 3};
  const b = {3, 5};

  var c = a.union(b).difference(a.intersection(a));
  var sum = 0;

  for (var i in c) {
    sum = sum + i;
  }
  print(c);
  print(sum);
}
