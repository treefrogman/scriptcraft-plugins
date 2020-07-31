var items = require('items');

var obflintianRecipe = new org.bukkit.inventory.ShapelessRecipe(items.flint(9));
obflintianRecipe.addIngredient(items.obsidian());

server.addRecipe(obflintianRecipe);

var recipes = require('recipes');
var items = require('items');

recipes.add({
  result: items.obsidian(1),
  ingredients: {
    F: items.flint(1)
  },
  shape: [ 'FFF',
           'FFF',
           'FFF' ]
});
