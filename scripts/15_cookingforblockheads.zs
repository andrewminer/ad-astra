var nugget = <ore:nuggetIron> | <ore:nuggetAluminum> | <ore:nuggetCopper> | <ore:nuggetNickel> | <ore:nuggetSteel>;
var ingot = <ore:ingotIron> | <ore:ingotAluminum> | <ore:ingotCopper> | <ore:ingotNickel> | <ore:ingotSteel>;

# Cooking for Blockheads II — don't require diamonds
recipes.remove(<cookingforblockheads:recipe_book:2>);
recipes.addShaped(<cookingforblockheads:recipe_book:2>, [
    [<cookingforblockheads:recipe_book:1>],
    [<minecraft:crafting_table>],
]);

# Fridge -- allow a wider selection of metals
recipes.remove(<cookingforblockheads:fridge>);
recipes.addShaped(<cookingforblockheads:fridge>, [
    [ingot, null, ingot],
    [ingot, <ore:chestWood>, ingot],
    [ingot, null, ingot],
]);

# Heating Unit -- use a more compatible recipe
recipes.remove(<cookingforblockheads:heating_unit>);
recipes.addShaped(<cookingforblockheads:heating_unit>, [
    [<ore:plateIron>],
    [<thermalfoundation:material:513>],
]);

# Ice Unit -- use a more compatible recipe
recipes.remove(<cookingforblockheads:ice_unit>);
recipes.addShaped(<cookingforblockheads:ice_unit>, [
    [<ore:plateIron>],
    [<thermalfoundation:material:1025>],
]);

# Milk Jar -- only allow plain glass
recipes.remove(<cookingforblockheads:milk_jar>);
recipes.addShaped(<cookingforblockheads:milk_jar>, [
    [<minecraft:glass>, <ore:plankWood>, <minecraft:glass>],
    [<minecraft:glass>, <minecraft:milk_bucket>, <minecraft:glass>],
    [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
]);

# Preservation Chamber -- use a more compatible recipe
recipes.remove(<cookingforblockheads:preservation_chamber>);
recipes.addShaped(<cookingforblockheads:preservation_chamber>, [
    [<ore:plateIron>],
    [<minecraft:comparator>],
]);

# Sink -- allow a wider selection of metals
recipes.remove(<cookingforblockheads:sink>);
recipes.addShaped(<cookingforblockheads:sink>, [
    [ingot, ingot, ingot],
    [<minecraft:hardened_clay>, <minecraft:bucket>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>],
]);

# Stove -- allow a wider selection of metals
recipes.remove(<cookingforblockheads:oven>);
recipes.addShaped(<cookingforblockheads:oven>, [
    [<ore:blockGlassBlack>, <ore:blockGlassBlack>, <ore:blockGlassBlack>],
    [ingot, <minecraft:furnace>, ingot],
    [ingot, ingot, ingot],
]);

# Tool Rack -- allow a wider selection of metals
recipes.remove(<cookingforblockheads:tool_rack>);
recipes.addShaped(<cookingforblockheads:tool_rack>, [
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [nugget, null, nugget],
]);
