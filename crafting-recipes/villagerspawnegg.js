var recipes = require('recipes');
var items = require('items');

var vEggRecipe = recipes.add({
  result: items.villagerSpawnEgg(1),
  ingredients: {
    E: items.emeraldBlock(1)
  },
  shape: [ 'EEE',
           'EEE',
           'EEE' ]
});
