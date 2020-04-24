import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;
import mods.thermalexpansion.Centrifuge;


########################################################################################################################

var bladeMetals = [
    <ore:ingotIron>,
    <ore:ingotSteel>,
] as IOreDictEntry[];

var cookingMetals = [
    <ore:ingotAluminum>,
    <ore:ingotBronze>,
    <ore:ingotCopper>,
    <ore:ingotIron>,
    <ore:ingotNickel>,
    <ore:ingotSteel>,
] as IOreDictEntry[];

<ore:ingotBrick>.add(<chineseworkshop:material:1>);
<ore:ingotBrick>.add(<chineseworkshop:material:3>);
var ceramics = [
    <ore:ingotBrick>,
    <ore:ingotBrickNether>,
] as IOreDictEntry[];

var water = <harvestcraft:freshwateritem>;


########################################################################################################################

# Bakeware -- replace with more generic recipe
recipes.remove(<harvestcraft:bakewareitem>);
for brick in ceramics {
    recipes.addShaped(<harvestcraft:bakewareitem>, [
        [brick, brick, brick],
        [brick, null,  brick],
        [brick, brick, brick],
    ]);
}

# Cutting Board -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:cuttingboarditem>);
for ingot in bladeMetals {
    recipes.addShaped(<harvestcraft:cuttingboarditem>, [
        [ingot, null, null],
        [null, <ore:stickWood>, null],
        [null, null, <ore:plankWood>],
    ]);
}

# Fish Bait -- replace recipe to use less string and require ground fish
recipes.remove(<harvestcraft:fishtrapbaititem>);
recipes.addShapeless(
    "fishtrapbait_replacement", <harvestcraft:fishtrapbaititem>,
    [<ore:string>, <harvestcraft:groundfishitem>]
);

# Fresh Milk -- don't let people use a whole bucket when a quarter will do
<ore:listAllMilk>.remove(<minecraft:milk_bucket>);

# Fresh Water -- don't allow food-grade water from buckets (eww)
recipes.remove(<harvestcraft:freshwateritem>);
<ore:listAllwater>.remove(<minecraft:water_bucket>);

# Grinder -- remove as redundant with Thermal Expansion Pulverizer
JEI.removeAndHide(<harvestcraft:grinder>);

# Ground Trap -- remove as too OP
JEI.removeAndHide(<harvestcraft:groundtrap>);

# Market -- remove as there's no one out there to trade with
JEI.removeAndHide(<harvestcraft:market>);

# Pot -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:potitem>);
for ingot in cookingMetals {
    recipes.addShaped(<harvestcraft:potitem>, [
        [<ore:stickWood>, ingot, ingot],
        [null,        ingot, ingot],
    ]);
}

# Presser -- remove as redundant with Thermal Expansion Centrifugal Separator
JEI.removeAndHide(<harvestcraft:presser>);

# Saucepan -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:saucepanitem>);
for ingot in cookingMetals {
    recipes.addShaped(<harvestcraft:saucepanitem>, [
        [ingot, null,  null],
        [null,  ingot, null],
        [null,  null,  <ore:stickWood>],
    ]);
}

# Salt -- remove the ability to craft salt from water
recipes.removeByRecipeName("harvestcraft:saltitem");

# Shipping Bin -- remove as there's no one out there to trade with
JEI.removeAndHide(<harvestcraft:shippingbin>);

# Skillet -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:skilletitem>);
for ingot in cookingMetals {
    recipes.addShaped(<harvestcraft:skilletitem>, [
        [null, ingot, null],
        [null, null,  <ore:stickWood>],
    ]);
}

# Water Filter -- replace with early-game-friendly recipe
recipes.remove(<harvestcraft:waterfilter>);
for ingot in cookingMetals {
    recipes.addShaped(<harvestcraft:waterfilter>, [
        [ingot, <ore:stickWood>, ingot],
        [<ore:stickWood>, <projectred-core:resource_item:420>, <ore:stickWood>],
        [ingot, <ore:stickWood>, ingot],
    ]);
}

# Well -- remove as too OP
JEI.removeAndHide(<harvestcraft:well>);
