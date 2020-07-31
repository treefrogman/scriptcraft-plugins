(function () {
	var utils = require('utils');
	var players = {};
	var loops = {};
	var worldName = {
		"world": "The Overworld",
		"world_nether": "The Nether",
		"world_the_end": "The End"
	};
	function giveCompass(player) {
		var compass = new org.bukkit.inventory.ItemStack(org.bukkit.Material.COMPASS);
		var meta = compass.getItemMeta();
		var location = players[player.name];
                var vanish = org.bukkit.enchantments.Enchantment.VANISHING_CURSE;
                meta.addEnchant(vanish, 1, true);
		meta.addItemFlags(org.bukkit.inventory.ItemFlag.HIDE_ENCHANTS);
		meta.setDisplayName("You died in " + worldName[location.world.name]);
		meta.setLodestoneTracked(false);
		meta.setLodestone(location);
		compass.setItemMeta(meta);
		player.inventory.addItem(compass);
	}
	function updateLocation(player) {
		players[player.name] = player.location;
	}
	events.playerRespawn(function (event) {
		giveCompass(event.player);
	});
	function addPlayer(player) {
		loops[player.name] = setInterval(function () {
			updateLocation(player);
		}, 500);
	}
	utils.players(addPlayer);
	events.playerJoin(function (event) {
		addPlayer(event.player);
	});
	events.playerQuit(function (event) {
		clearInterval(loops[event.player.name]);
	});
}());
