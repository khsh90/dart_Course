void main() {
  final animal = Animal(age: 20);
  animal.sleep();

  final dog = Dog(90);
  final cow = Cow(5);
  dog.sleep();
  dog.bark();

  cow.sleep();
  cow.moo();
}

class Animal {
  //animal is super claa
  void sleep() => print('sleep');
  int age;

  Animal({required this.age}) {} //this called super constructor

}

class Dog extends Animal {
  
  Dog(int age)
      : super(
            age:
                age); //the super used here to get the argument data from superconstractor
  // @override  //as this used to override super class method
  //void sleep() => print('dog sleep');
  
  @override
  void sleep() {
    super.sleep();
    print('sleep more');
  }

  //dog is inherent from animal0
  void bark() => print('bark');
}

class Cow extends Animal {
  Cow(int age) : super(age: age);

  void moo() => print('moo');
}
