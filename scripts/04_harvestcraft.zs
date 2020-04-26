import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;
import mods.thermalexpansion.Centrifuge;


########################################################################################################################

var water = <harvestcraft:freshwateritem>;


########################################################################################################################

# Bakeware -- replace with more generic recipe
recipes.remove(<harvestcraft:bakewareitem>);
recipes.addShaped(<harvestcraft:bakewareitem>, [
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick>],
    [<ore:ingotBrick>, null,  <ore:ingotBrick>],
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick>],
]);

# Cake -- only allow HC milk
recipes.remove(<minecraft:cake>);
recipes.addShaped(<minecraft:cake>, [
    [<ore:listAllmilk>, <ore:listAllmilk>, <ore:listAllmilk>],
    [<ore:listAllsugar>, <ore:egg>, <ore:listAllsugar>],
    [<ore:foodFlour>, <ore:foodFlour>, <ore:foodFlour>]
]);

# Cutting Board -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:cuttingboarditem>);
recipes.addShaped(<harvestcraft:cuttingboarditem>, [
    [<ore:bladeMetalIngot>, null, null],
    [null, <ore:stickWood>, null],
    [null, null, <ore:plankWood>],
]);

# Fish Bait -- replace recipe to use less string and require ground fish
recipes.remove(<harvestcraft:fishtrapbaititem>);
recipes.addShapeless(
    "fishtrapbait_replacement", <harvestcraft:fishtrapbaititem>,
    [<ore:string>, <harvestcraft:groundfishitem>]
);

# Fresh Milk -- don't let people use a whole bucket when a quarter will do
<ore:listAllmilk>.remove(<minecraft:milk_bucket>);

# Fresh Water -- don't allow food-grade water from buckets (eww)
recipes.remove(<harvestcraft:freshwateritem>);
<ore:listAllwater>.remove(<minecraft:water_bucket>);

# Grinder -- remove as redundant with Thermal Expansion Pulverizer
JEI.removeAndHide(<harvestcraft:grinder>);

# Ground Trap -- remove as too OP
JEI.removeAndHide(<harvestcraft:groundtrap>);

# Market -- remove as there's no one out there to trade with
JEI.removeAndHide(<harvestcraft:market>);

# Pizza Slice -- remove strange recipe for pizza slices
recipes.removeByRecipeName("harvestcraft:berryvinaigrettesaladitem");

# Pot -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:potitem>);
recipes.addShaped(<harvestcraft:potitem>, [
    [<ore:stickWood>, <ore:cookwareMetalIngot>, <ore:cookwareMetalIngot>],
    [null, <ore:cookwareMetalIngot>, <ore:cookwareMetalIngot>],
]);

# Presser -- remove as redundant with Thermal Expansion Centrifugal Separator
JEI.removeAndHide(<harvestcraft:presser>);

# Saucepan -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:saucepanitem>);
recipes.addShaped(<harvestcraft:saucepanitem>, [
    [<ore:cookwareMetalIngot>, null, null],
    [null, <ore:cookwareMetalIngot>, null],
    [null, null, <ore:stickWood>],
]);

# Salt -- remove the ability to craft salt from water
recipes.removeByRecipeName("harvestcraft:saltitem");

# Shipping Bin -- remove as there's no one out there to trade with
JEI.removeAndHide(<harvestcraft:shippingbin>);

# Skillet -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:skilletitem>);
recipes.addShaped(<harvestcraft:skilletitem>, [
    [null, <ore:cookwareMetalIngot>, null],
    [null, null,  <ore:stickWood>],
]);

# Sugar -- allow making sugar from maple syrup and beets
recipes.addShapeless(<minecraft:sugar>, [
    <ore:toolPot>.reuse(), <ore:cropMaplesyrup>
]);
recipes.addShapeless(<minecraft:sugar> * 2, [
    <ore:toolPot>.reuse(), <ore:cropBeet>, <ore:cropBeet>, <ore:cropBeet>, <ore:cropBeet>, water
]);

# Water Filter -- replace with early-game-friendly recipe
recipes.remove(<harvestcraft:waterfilter>);
recipes.addShaped(<harvestcraft:waterfilter>, [
    [<ore:itemMetalIngot>, <ore:stickWood>, <ore:itemMetalIngot>],
    [<ore:stickWood>, <projectred-core:resource_item:420>, <ore:stickWood>],
    [<ore:itemMetalIngot>, <ore:stickWood>, <ore:itemMetalIngot>],
]);

# Well -- remove as too OP
JEI.removeAndHide(<harvestcraft:well>);
