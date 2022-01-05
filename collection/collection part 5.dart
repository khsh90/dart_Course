void main() {
  Map person = {'name': 'khaled', 'age': 30, 'height': 1.8};

  // print(person);
  // print(person['age']);
  // person['color'] = 'white';
  // print(person);
  // print(person.keys);
  // print(person.values);
  // var name = person['name'] as String;

  // var weight = person['weight'];

  // print(weight);

  // if (weight == null) {
  //   print('No value');
  // } else {
  //   print(weight);
  // }

  // for (var key in person.keys) {
  //   print(person[key]);
  // }

  // another way

  // for (var values in person.values) {
  //   print(values);
  // }

  for (var val in person.entries) {
    print('${val.key}:${val.value}');
  }
}
