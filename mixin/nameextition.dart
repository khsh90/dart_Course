import 'stringtoparss.dart';

extension on String {
  int? convert() => int.tryParse(this);
}

void main() {
  var str = '123';

  str.toIntOrNull;

  print(str);
}


// name extention used to add extra feature like here make the string diectly converted to number 
// if you want to use extension inside file don't name it like convert() , but if want to use it outside like toIntOrNull name it .