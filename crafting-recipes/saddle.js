var recipes = require('recipes');
var items = require('items');

var saddleRecipe = recipes.add({
  result: items.saddle(1),
  ingredients: {
    L: items.leather(1),
    H: items.tripwireHook(1)
  },
  shape: [ 'LLL',
           'LLL',
           ' H ' ]
});
