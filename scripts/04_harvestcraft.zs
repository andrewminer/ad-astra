import mods.jei.JEI;


########################################################################################################################

# Cutting Board -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:cuttingboarditem>);
recipes.addShaped(<harvestcraft:cuttingboarditem>, [
    [<ore:ironIngot>, null, null],
    [null, <ore:stick>, null],
    [null, null, <ore:plankWood>],
]);
recipes.addShaped(<harvestcraft:cuttingboarditem>, [
    [<ore:steelIngot>, null, null],
    [null, <ore:stick>, null],
    [null, null, <ore:plankWood>],
]);

# Fish Bait -- replace recipe to use less string and require ground fish
recipes.remove(<harvestcraft:fishtrapbaititem>);
recipes.addShapeless(
    "fishtrapbait_replacement", <harvestcraft:fishtrapbaititem>,
    [<ore:string>, <harvestcraft:groundfishitem>]
);

# Fresh Water -- increase output of recipe to match milk
recipes.remove(<harvestcraft:freshwateritem>);
recipes.addShapeless(<harvestcraft:freshwateritem> * 4, [<minecraft:water_bucket>]);

# Ground Trap -- remove as too OP
JEI.removeAndHide(<harvestcraft:groundtrap>);

# Market -- remove as there's no one out there to trade with
JEI.removeAndHide(<harvestcraft:market>);

# Pot -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:potitem>);
recipes.addShaped(<harvestcraft:potitem>, [
    [<ore:stick>, <ore:ironIngot>, <ore:ironIngot>],
    [null, <ore:ironIngot>, <ore:ironIngot>],
]);
recipes.addShaped(<harvestcraft:potitem>, [
    [<ore:stick>, <ore:copperIngot>, <ore:copperIngot>],
    [null, <ore:copperIngot>, <ore:copperIngot>],
]);
recipes.addShaped(<harvestcraft:potitem>, [
    [<ore:stick>, <ore:steelIngot>, <ore:steelIngot>],
    [null, <ore:steelIngot>, <ore:steelIngot>],
]);

# Presser -- remove as redundant with Thermal Expansion Centrifugal Separator
JEI.removeAndHide(<harvestcraft:presser>);

# Saucepan -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:saucepanitem>);
recipes.addShaped(<harvestcraft:saucepanitem>, [
    [<ore:ironIngot>, null, null],
    [null, <ore:ironIngot>, null],
    [null, null, <ore:stick>],
]);
recipes.addShaped(<harvestcraft:saucepanitem>, [
    [<ore:copperIngot>, null, null],
    [null, <ore:copperIngot>, null],
    [null, null, <ore:stick>],
]);
recipes.addShaped(<harvestcraft:saucepanitem>, [
    [<ore:steelIngot>, null, null],
    [null, <ore:steelIngot>, null],
    [null, null, <ore:stick>],
]);

# Salt -- remove the ability to craft salt from water
recipes.removeByRecipeName("harvestcraft:saltitem");

# Shipping Bin -- remove as there's no one out there to trade with
JEI.removeAndHide(<harvestcraft:shippingbin>);

# Skillet -- replace bricks(?!) and use metals
recipes.remove(<harvestcraft:skilletitem>);
recipes.addShaped(<harvestcraft:skilletitem>, [
    [null, <ore:ironIngot>, null],
    [null, null, <ore:stick>],
]);
recipes.addShaped(<harvestcraft:skilletitem>, [
    [null, <ore:copperIngot>, null],
    [null, null, <ore:stick>],
]);
recipes.addShaped(<harvestcraft:skilletitem>, [
    [null, <ore:steelIngot>, null],
    [null, null, <ore:stick>],
]);

# Well -- remove as too OP
JEI.removeAndHide(<harvestcraft:well>);
