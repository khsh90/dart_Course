extension arrangeto on int {
  List<int> rangeTo(int other) {
    List<int> numbers = [];
    if (other > 5) {
      return [];
    } else {
      for (int i = 1; i <= other; i++) {
        numbers.add(i);
      }
      return numbers;
    }
  }
}

void main() {
  for (var i in 1.rangeTo(5)) {
    print(i);
  }
}
