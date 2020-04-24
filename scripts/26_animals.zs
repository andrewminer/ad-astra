# Bison -- make it drop more meat and some bones
var bison = <entity:zawa:americanbison>;
bison.clearDrops();
bison.addDrop(<minecraft:beef>, 2, 3);
bison.addDrop(<minecraft:bone>, 1, 2);
bison.addDrop(<minecraft:leather>, 1);
bison.addDrop(<zawa:fur>, 1);

# Cassowary -- make it drop more meat
var cassowary = <entity:zawa:cassowary>;
cassowary.clearDrops();
cassowary.addDrop(<zawa:bird_meat>, 1, 3);
cassowary.addDrop(<minecraft:feather>, 1, 3);

# Echidna -- make it drop bush meat instead of reptile meat
var echidna = <entity:zawa:echidna>;
echidna.clearDrops();
echidna.addDrop(<zawa:bush_meat_raw>);

# Mooshroom -- make it drop red mushrooms
var mooshroom = <entity:minecraft:mooshroom>;
mooshroom.addDrop(<minecraft:red_mushroom>, 1, 3);
