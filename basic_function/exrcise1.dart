void main (){

  // exrcise one
  var list1 = <double>[];
  var list2 = <double>[1.2, 5, 3];
  var list3 = <double>[8, 9, 10];

  print(sum(list1));
  print(sum(list2));
  print(sum(list3));
}

double sum(List<double> numbers) {
  var sumNumbers = 0.0;

  for (var number in numbers) {
    sumNumbers += number;
  }
  return sumNumbers;

//------------------------------------------
}