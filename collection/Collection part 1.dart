void main() {
  var cities = ['amman', 'zarqa', 'karak'];
  cities[1] = 'ajlounn';
  print(cities);
  // ----------------------------
  for (var city in cities) {
    print(city);
  } //this is better
  // --------------------------------------
  for (var i = 0; i < cities.length; i++) {
    print(cities[i]);
  }
// -------------------------------------
}
