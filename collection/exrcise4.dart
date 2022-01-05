void main() {
  final resturants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italine',
      'rating': [4.0, 3.5, 4.5]
    },
    {
      'name': 'Chez Ane',
      'cuisine': 'French',
      'rating': [5.0, 4.5, 4.0]
    },
    {
      'name': 'Navartana',
      'cuisine': 'Indian',
      'rating': [4.0, 4.5, 4.0]
    },
  ];

  var sum = 0.0;

  for (var resturant in resturants) {
    var rastturantRating = resturant['rating'] as List;

    for (var resAvg in rastturantRating) {
      sum += resAvg;
    }
    resturant['avrage'] = sum / rastturantRating.length;
  }
  print(resturants);
}
