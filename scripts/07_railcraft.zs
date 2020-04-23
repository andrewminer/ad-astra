import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import mods.jei.JEI;
import mods.thermalexpansion.Pulverizer;


########################################################################################################################

# Fix missing names
<railcraft:charge:9>.displayName = "Carbon Electrode";
<railcraft:charge:10>.displayName = "Silver Electrode";

# Ender Dust -- add recipe for TE Pulverizer
Pulverizer.addRecipe(<railcraft:dust:6>, <minecraft:ender_pearl>, 8000);

# Hide all the colored version of reinforced concrete
var ids = [0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 14, 15] as int[];
for id in ids {
    JEI.hide(<railcraft:reinforced_concrete>.definition.makeStack(id));
}
