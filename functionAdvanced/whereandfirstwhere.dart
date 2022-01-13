void main() {
  const list = [2, 4, 6];

  final onlyWhere = list.where((element) => element % 2 == 0);

  print(onlyWhere);

  final onlyFirstWhere = list.firstWhere((x) => x == 4, orElse: () => -1);

  print(onlyFirstWhere);
}
