void main() {
  var list = ['amman', 'madada', 'karak', 'amman'];
  var set1 = {
    'amman',
    'madaba',
    'karak',
  };
  var set2 = {'amman', 'zarqa', 'sahab'};

  print(list);
  print(set1);

  // -------------------------
  print(list[1]);
  ;
  print(set1.elementAt(1));
  // --------------------------
  set1.add('ajloun');
  print(set1);
  //----------------
  //print(list.length);
  print(set1.length);
  // -------------------------------
  print(set1.intersection(set2));
  print(set1.difference(set2));
  print(set1.union(set2));
}
