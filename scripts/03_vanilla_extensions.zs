import crafttweaker.oredict.IOreDictEntry;


########################################################################################################################

# Bucket -- add alternate recipes metal buckets
recipes.remove(<minecraft:bucket>);
var ingots = [
    <ore:ingotCopper>, <ore:ingotIron>, <ore:ingotTin>, <ore:ingotSteel>
] as IOreDictEntry[];
for ingot in ingots {
    recipes.addShaped(<minecraft:bucket>, [
        [ingot, null, ingot],
        [null, ingot, null],
    ]);
}

# Compass -- make a much easier recipe for early-game use
recipes.remove(<minecraft:compass>);
ingots = [<ore:ingotIron>, <ore:ingotAluminum>, <ore:ingotTin>, <ore:ingotSilver>] as IOreDictEntry[];
for ingot in ingots {
    recipes.addShaped(<minecraft:compass>, [
        [null, ingot, null],
        [ingot, <ore:nuggetIron>, ingot],
        [null, ingot, null],
    ]);
}

# Saddle -- add alternate recipes using various metals
recipes.remove(<minecraft:saddle>);
ingots = [
    <ore:ingotIron>, <ore:ingotBrass>, <ore:ingotBronze>, <ore:ingotSilver>, <ore:ingotGold>
] as IOreDictEntry[];
for ingot in ingots {
    recipes.addShaped(<minecraft:saddle>, [
        [<ore:leather>, <ore:leather>, <ore:leather>],
        [<ore:leather>, ingot, <ore:leather>],
        [ingot, null, ingot],
    ]);
}
