void main() {
  final temp1 = Temretature.celecus(5);

  final temp2 = Temretature.fehrnhiet(30);
  temp1.celious = 20;
  // print(temp2 .fehrinhit()); //what if we need to called fehrinhit without (), like celious , here we shall use getter and setter as below in class
  print(temp2
      .fehrinhit); //here we use getter , what if we want to set a value for fehrinhit like above in celious , we will use setter as below in class
  print(temp1.celious);

  temp2.fehrinhit = 50; //here we use setter

  print(temp2.fehrinhit);
}

class Temretature {
  Temretature.celecus(this.celious);
  double celious;

  Temretature.fehrnhiet(double fehrnihet) : celious = (fehrnihet - 32) / 1.8;

  // double fehrinhit() => (celious + 32) * 1.8;  as when called this one we shall put () in main in above wee will use getter and setter .
  double get fehrinhit =>
      (celious + 32) *
      1.8; // in get you shall provide it with a body  like this one (celious + 32) * 1.8 as get take no arguments
  set fehrinhit(double fehrnihet) => celious = (fehrnihet - 32) / 1.8;
}
