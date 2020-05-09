import mods.jei.JEI;


########################################################################################################################

# Crate -- make crate recipes cheaper
recipes.remove(<cfm:crate>);
recipes.addShaped(<cfm:crate>, [
    [<minecraft:planks:0>, <ore:stickWood>, <minecraft:planks:0>],
    [<ore:stickWood>, null, <ore:stickWood>],
    [<minecraft:planks:0>, <ore:stickWood>, <minecraft:planks:0>],
]);
recipes.remove(<cfm:crate_spruce>);
recipes.addShaped(<cfm:crate_spruce>, [
    [<minecraft:planks:1>, <ore:stickWood>, <minecraft:planks:1>],
    [<ore:stickWood>, null, <ore:stickWood>],
    [<minecraft:planks:1>, <ore:stickWood>, <minecraft:planks:1>],
]);
recipes.remove(<cfm:crate_birch>);
recipes.addShaped(<cfm:crate_birch>, [
    [<minecraft:planks:2>, <ore:stickWood>, <minecraft:planks:2>],
    [<ore:stickWood>, null, <ore:stickWood>],
    [<minecraft:planks:2>, <ore:stickWood>, <minecraft:planks:2>],
]);
recipes.remove(<cfm:crate_jungle>);
recipes.addShaped(<cfm:crate_jungle>, [
    [<minecraft:planks:3>, <ore:stickWood>, <minecraft:planks:3>],
    [<ore:stickWood>, null, <ore:stickWood>],
    [<minecraft:planks:3>, <ore:stickWood>, <minecraft:planks:3>],
]);
recipes.remove(<cfm:crate_acacia>);
recipes.addShaped(<cfm:crate_acacia>, [
    [<minecraft:planks:4>, <ore:stickWood>, <minecraft:planks:4>],
    [<ore:stickWood>, null, <ore:stickWood>],
    [<minecraft:planks:4>, <ore:stickWood>, <minecraft:planks:4>],
]);
recipes.remove(<cfm:crate_dark_oak>);
recipes.addShaped(<cfm:crate_dark_oak>, [
    [<minecraft:planks:5>, <ore:stickWood>, <minecraft:planks:5>],
    [<ore:stickWood>, null, <ore:stickWood>],
    [<minecraft:planks:5>, <ore:stickWood>, <minecraft:planks:5>],
]);

# Knife -- change to something reasonable
recipes.remove(<cfm:item_knife>);
recipes.addShaped(<cfm:item_knife>, [
    [<ore:bladeMetalIngot>],
    [<ore:stickWood>],
]);

# Leather -- allow using knife to turn fur into leather
recipes.addShapeless(<minecraft:leather>, [
    <cfm:item_knife>.anyDamage().transformDamage(), <ore:zawaFur>
]);
recipes.addShapeless(<minecraft:leather> * 2, [
    <cfm:item_knife>.anyDamage().transformDamage(2), <zawa:thick_fur>
]);

# Sausage -- remove sausage recipe in favor of HarvestCraft's
JEI.removeAndHide(<cfm:item_sausage>);
