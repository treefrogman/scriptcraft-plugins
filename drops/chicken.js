var items = require('items');

events.entityDeath(function(event) {
  if (event.entity.type == entities.chicken()) {
    if (Math.random() < .05) {
      event.drops.add(items.feather(2048));
    }
  }
});
