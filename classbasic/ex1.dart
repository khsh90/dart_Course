void main() {
  final person1 = Person(name: 'khaled', age: 30, height: 181.5);
  final personDetails = person1.printDescription();

  print(
      'My name is ${personDetails['name']},I am ${personDetails['age']} years old ,I\'m ${personDetails['height']} meter tall  ');
}

class Person {
  final String name;
  final int age;
  final double height;

  Person({required this.name, required this.age, required this.height});

  Map printDescription() {
    final person = {'name': this.name, 'age': this.age, 'height': this.height};

    return person;
  }
}
