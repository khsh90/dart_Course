void main() {
  const values = [1, 2, 3];

  // for (var vlaue in values) {
  //   print(vlaue);
  // }
  //or use operator
  // values.forEach((value) => print(value));
  values.forEach(
      print); //becaue print take object and the obve list is int type of object

  // final doubles1 = [];

  // for (var value in values) {
  //   doubles1.add(value * 2);
  // }

  // print(doubles1);

  //or use less code

  final double2 = values.map((value) =>
      value *
      2); //this return itrable value ,means values will be accessed sequantially , to convert it to list just type .toLisyt()
  final double3 = values.map((value) => value * 2).toList(); //or like below
  final List<int> double4 = values.map((value) => value * 2).toList();

  print(double2);
  print(double3);
  print(double4);
}
