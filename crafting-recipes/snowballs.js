var items = require('items');

var snowballRecipe = new org.bukkit.inventory.ShapelessRecipe(items.snowball(4));
snowballRecipe.addIngredient(items.snowBlock());

server.addRecipe(snowballRecipe);
