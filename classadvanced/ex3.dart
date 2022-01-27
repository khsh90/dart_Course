class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  factory Person.fromJson(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];
    if (name is String && age is int) {
      return Person(name: name, age: age);
    }
    throw UnsupportedError('type of value key is not correct or it is missing');
  }

  Map toJson() {
    var personmap = {
      'name': name,
      'age': age,
    };
    return personmap;
  }
}

void main() {
  final person = Person.fromJson({'name': 'khaled', 'age': '30'});

  print(person.name);
  print(person.age);

  print(person.toJson());
}
