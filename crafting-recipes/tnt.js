var recipes = require('recipes');
var items = require('items');

var tntRecipe = recipes.add({
  result: items.tnt(1),
  ingredients: {
    S: items.sand(1),
    G: items.gunpowder(1)
  },
  shape: [ ' S ',
           'SGS',
           ' S ' ]
});
