abstract class A {
  void meth1();
  void meth3() => print('meth3');
}

abstract class B {
  void meth2();
}

//
class callAB extends A {
  //inextends you cannot inherent two classes so that willbuse implement
  //in extends no need to override method that body like meth3 in class A whilebin implemnt you have to override
  @override
  void meth1() {
    // TODO: implement meth1
  }
}

class callABIMP implements A, B {
  @override
  void meth1() {
    // TODO: implement meth1
  }

  @override
  void meth2() {
    // TODO: implement meth2
  }

  @override
  void meth3() {
    // TODO: implement meth3
  }
}
