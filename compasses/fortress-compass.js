(function () {
  var utils = require('utils');

  var players = {};
  var theNether = server.worlds.get(1);
  function giveFortressCompass(player) {
    var nearestFortress = theNether.locateNearestStructure(player.location, org.bukkit.StructureType.NETHER_FORTRESS, 100, false);
    var compass = new org.bukkit.inventory.ItemStack(org.bukkit.Material.COMPASS);
    var meta = compass.getItemMeta();
    var vanish = org.bukkit.enchantments.Enchantment.VANISHING_CURSE;
    meta.addEnchant(vanish, 1, true);
    meta.addItemFlags(org.bukkit.inventory.ItemFlag.HIDE_ENCHANTS);
    meta.setDisplayName("Fortress");
    meta.setLodestoneTracked(false);
    meta.setLodestone(nearestFortress);
    compass.setItemMeta(meta);
    player.inventory.addItem(compass);
  }
  function giveIfInNether(player) {
    if(player.location.world.name == "world_nether") {
      giveFortressCompass(player);
      players[player.name] = true;
    }
  }
  events.playerRespawn(function (event) {
    setTimeout(function () {
      players[event.player.name] = null;
      giveIfInNether(event.player);
    }, 1000);
  });
  events.playerChangedWorld(function (event) {
    setTimeout(function () {
      if(!players[event.player.name]) {
        giveIfInNether(event.player);
      }
    }, 1000);
  });
}());
