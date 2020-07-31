var items = require('items');

var woolstringRecipe = new org.bukkit.inventory.ShapelessRecipe(items.string(4));
woolstringRecipe.addIngredient(items.whiteWool());

server.addRecipe(woolstringRecipe);
