class Stack<T> {
  final _listItem = <T>[];

  void push(T item) => _listItem.add(item);

  T get pull => _listItem.removeLast();
}

void main() {
  final num = Stack<int>();
//the concept of stack used to add data (push) When used pull will remove last item and when use it again will remove the last as below
  num.push(1);
  num.push(2);

  print(num.pull);
  print(num.pull);

  final names = Stack<String>();

    names.push('khaled');
  names.push('saad');


    print(names.pull);
  print(names.pull);
}
