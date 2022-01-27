void main() {
  print(StaticClass.name('khaled'));
  print(StaticClass.welcome);
  print(StaticClass.sognIn);
}

class StaticClass {
  static const String welcome =
      'welcome'; //as we don't them to be changes this reduce compile time
  static const String sognIn = 'SignIn';
  static String name(String name) => '$welcome $name';
}
 