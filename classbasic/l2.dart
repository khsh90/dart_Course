class Complex {
  const Complex(this.rm, this.sm);

  final double rm;
  final double sm;
}

void main() {
  const com1 = Complex(1,
      2); //to inistiate instance of class with const the constructor shall be const also and the property shall be final
}
