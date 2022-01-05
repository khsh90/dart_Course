void main() {
  const banas = 5;
  const apples = 6;
  const grains = {'pasta': '500g', 'rice': '1kg'};
  const addGrains = true;

  // if (banas > 0) {
  //   shoppingList['banas'] = 5;
  // }

  // if (apples > 0) {
  //   shoppingList['apple'] = apples;
  // }
  // if (addGrains) {
  //   shoppingList.addAll(grains);
  // }

  // another and professional way to add data to shpping list
  var shoppingList = {
    if (banas > 0) 'banans': banas,
    if (apples > 0) 'apples': apples,
    //...used to add map and array directly
    if (addGrains) ...grains
  };

  print(shoppingList);
}
