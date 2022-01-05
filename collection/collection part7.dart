void main() {
  final list = [1, 2, 3];
  final copy1 = list;
  copy1[0] = 0;

  // the list here changes because both copy and list share the same refrence
  print("List:$list");
  print("copy1:$copy1");

  // to copy it use those two way

  final copy2 = [for (var li in list) li];
  copy2[0] = 9;
  print('copy2:$copy2');

  // the simplest way use ...
  final copy3 = [...list];
  copy3[0] = 9;
  print('Copy3:$copy3');
}
