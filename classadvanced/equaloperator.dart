class Points {
  final double a, b;

  const Points(this.a, this.b);

  // @override
  // bool operator ==(Object other) {
  //   if (other is Points) {
  //     return a == other.a && b == other.b;
  //   }
  //   return false;
  // }

  //the above works as the follow, in the operator side with equall is instance Of pOint Which are a, b in the left in which type you will use tO compare with as it is an object,When use is in if it is called points in run time to call other.a and other.b, but if you want to compare only with point type here will use as below
  @override
  bool operator ==(covariant Points other) {

    //covariant used to override the type of object that used in operator and only allow the type point to b3 compared with

      return a == other.a && b == other.b;
    
  }
}

void main() {
  print(5 == 5);

  print(Points(0, 7) == Points(0,7)) ; //it wi return false because dart doesn't know how to compare instant of points so that we need to implement equale operatornin class as above 0
}
