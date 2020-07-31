var recipes = require('recipes');
var items = require('items');

var godappleRecipe = recipes.add({
  result: items.enchantedGoldenApple(1),
  ingredients: {
    G: items.goldBlock(1),
    A: items.apple(1)
  },
  shape: [ 'GGG',
           'GAG',
           'GGG' ]
});
