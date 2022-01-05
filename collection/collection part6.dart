void main() {
  final color1 = ['green', 'blue'];
  const addBlue = false;
  const addRed = true;

  //this called if statment

  if (addBlue) {
    color1.add('blue');
  }
  if (addRed) {
    color1.add('red');
  }
  //print(color1);

  // the below called collection if
  final color2 = ['green', 'yellow', if (addBlue) 'blue', if (addRed) 'red'];

  final extraColors = ['pink', 'black'];
//the below is called collection for

//you can add extra color with two ways
// first way
  // color2.addAll(extraColor);

  //or use collection for
  final color3 = [
    'green',
    'yellow',
    if (addBlue) 'blue',
    if (addRed) 'red',
    for (var extraColor in extraColors) extraColor
  ];
  print(color3);

  //print(color2);
}
