import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Pulverizer;


########################################################################################################################

# Dilithium Crystals -- only allow using the crystalizer
var dilithiumCrystal as IItemStack = <libvulpes:productgem:0>;
var dilithiumDust as IItemStack = <libvulpes:productdust:0>;
var dilithiumOre as IItemStack = <libvulpes:ore0:0>;

recipes.remove(dilithiumCrystal);
Pulverizer.removeRecipe(dilithiumOre);
Pulverizer.addRecipe(dilithiumDust * 2, dilithiumOre, 4000);

# Carbon Brick -- allow pulverizing back to charcoal
Pulverizer.addRecipe(<minecraft:coal:1> * 6, <advancedrocketry:misc:1>, 2000);

# Concrete -- change recipe to match proportions from vanilla
recipes.remove(<advancedrocketry:concrete>);
recipes.addShaped(<advancedrocketry:concrete> * 4, [
    [<minecraft:concrete:8>, <minecraft:concrete:8>],
    [<minecraft:concrete:8>, <minecraft:concrete:8>],
]);

# Seat -- change recipe to avoid conflict with sleeping bags
recipes.remove(<advancedrocketry:seat>);
recipes.addShaped(<advancedrocketry:seat>, [
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
]);
