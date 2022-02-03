mixin Swiming {
  void swimming() => print('swimming');
}

mixin Eating {
  void eating() => print('eating');
}

class Talking {
  void talking() => print('taking');
}

class Running {
  void running() => print('running');
}

class Animal {
  void breathing() => print('breathing');
}

class Human extends Animal with Swiming, Eating, Talking implements Running {
  @override
  void running() => print('running');
}

void main() {
  final human = Human();

  human.breathing();
  human.swimming();
  human.eating();
  human.talking();
  human.running();
}


// any class could by mixin by adding with to class like human and talking 
// the diffrent between mixin class and noraml class , the mixin could not be inititating like final talking=Talking();
// the diffent between implement and mixin , implement need to @override while mixin no

