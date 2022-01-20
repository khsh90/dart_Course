class Complex {
  const Complex(this.ri, this.im);

  const Complex.zero() //this called named constructor
      : ri = 0,
        im = 0;

  const Complex.identity(this.ri) : im = 0; //this called named constructor

  final double ri;
  final double im;
}

void main() {
  const com1 = Complex(1,
      2); //to inistiate instance of class with const the constructor shall be const also and the property shall be final

  const com2 = Complex.zero();

  print(com2.im);

  const com3 = Complex.identity(5);

  print(com3.ri);
  print(com3.im);
}
