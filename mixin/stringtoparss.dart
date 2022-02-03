extension NumberToPars on String {
  int? toIntOrNull() => int.tryParse(this);
}
