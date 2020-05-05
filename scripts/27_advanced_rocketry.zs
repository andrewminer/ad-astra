import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Pulverizer;


########################################################################################################################

# Dilithium Crystals -- only allow using the crystalizer
var dilithiumCrystal as IItemStack = <libvulpes:productgem:0>;
var dilithiumDust as IItemStack = <libvulpes:productdust:0>;
var dilithiumOre as IItemStack = <libvulpes:ore0:0>;

recipes.remove(dilithiumCrystal);
Pulverizer.removeRecipe(dilithiumCrystal * 2);
Pulverizer.addRecipe(dilithiumDust * 2, dilithiumOre, 4000);

# Seat -- change recipe to avoid conflict with sleeping bags
recipes.remove(<advancedrocketry:seat>);
recipes.addShaped(<advancedrocketry:seat>, [
    [<ore:wool>, <ore:wool>, <ore:wool>],
    [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
]);
