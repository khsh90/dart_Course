void main() {
  final tst = [
    {
      'fname': 'khaled',
      'last': 'hadidi',
      'spending': [10, 20.5, 35],
    },
    {
      'fname': 'saad',
      'last': 'gazaleh',
      'spending': [10, 80.5, 35],
    },
    {
      'fname': 'dana',
      'last': 'shuqair',
      'spending': [10, 90.5, 35],
    },
  ];
  var spedingAmount = 0.0;
  //var spends = tst['spending'] as List;

  for (var spend in tst) {
    var spendtotal = spend['spending'] as List;
    for (var ss in spendtotal) {
      spedingAmount += ss;

      spend['stotal'] = spedingAmount;
    }
  }
  print(tst);
}
