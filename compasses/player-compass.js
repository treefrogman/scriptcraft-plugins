(function () {
	var compasses = {};
	var waitForPlayers, updateInterval;
	function createCompass(player, trackedPlayer) {
		var trackerCompass = new org.bukkit.inventory.ItemStack(org.bukkit.Material.COMPASS);
		var trackerMeta = trackerCompass.getItemMeta();
		var vanish = org.bukkit.enchantments.Enchantment.VANISHING_CURSE;
		trackerMeta.addEnchant(vanish, 1, true);
		trackerMeta.addItemFlags(org.bukkit.inventory.ItemFlag.HIDE_ENCHANTS);
		trackerMeta.setDisplayName(trackedPlayer.name);
		trackerMeta.setLodestoneTracked(false);
		compasses[player.name] = {
			template: trackerCompass,
			compass: trackerCompass,
			meta: trackerMeta
		};
	}

	function updateCompass(player, trackedPlayer) {
		var c = compasses[player.name];
		c.meta.setLodestone(trackedPlayer.location);
		c.compass.setItemMeta(c.meta);
	}

	function giveCompass(player) {
		var i = player.inventory;
		var c = compasses[player.name];
		i.setItemInOffHand(c.template);
		c.compass = i.getItemInOffHand();
	}
	function init(p1, p2) {
		createCompass(p1, p2);
		createCompass(p2, p1);
		events.playerRespawn(function (event) {
			giveCompass(event.player);
		});
		updateInterval = setInterval(function () {
			updateCompass(p1, p2);
			updateCompass(p2, p1);
		}, 500);
	}
	var playercompass = function () {
		waitForPlayers = setInterval(function () {
			var ben = server.getPlayer("325Gerbils");
			var miles = server.getPlayer("treefrogman");
			if(ben && miles) {
				clearInterval(waitForPlayers);
				init(ben, miles);
			}
		}, 500);
	};
	playercompass.kill = function () {
		clearInterval(waitForPlayers);
		clearInterval(updateInterval);
	};
	exports.playercompass = playercompass;
}());
