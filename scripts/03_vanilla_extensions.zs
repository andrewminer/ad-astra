import crafttweaker.oredict.IOreDictEntry;


########################################################################################################################

# Bucket -- add alternate recipes metal buckets
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [
    [<ore:itemMetalIngot>, null, <ore:itemMetalIngot>],
    [null, <ore:itemMetalIngot>, null],
]);

# Compass -- make a much easier recipe for early-game use
recipes.remove(<minecraft:compass>);
recipes.addShaped(<minecraft:compass>, [
    [null, <ore:itemMetalIngot>, null],
    [<ore:itemMetalIngot>, <ore:nuggetIron>, <ore:itemMetalIngot>],
    [null, <ore:itemMetalIngot>, null],
]);

# Saddle -- add alternate recipes using various metals
recipes.remove(<minecraft:saddle>);
recipes.addShaped(<minecraft:saddle>, [
    [<ore:leather>, <ore:leather>, <ore:leather>],
    [<ore:leather>, <ore:decorativeMetalIngot>, <ore:leather>],
    [<ore:decorativeMetalIngot>, null, <ore:decorativeMetalIngot>],
]);

# Seed -- create seed from wheat and rename
<minecraft:wheat_seeds>.displayName = "Wheat Seeds";
recipes.addShapeless(<minecraft:wheat_seeds>, [<minecraft:wheat>]);
