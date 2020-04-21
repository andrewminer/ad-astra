import mods.thermalexpansion.Pulverizer;


########################################################################################################################

# Fix missing names
<railcraft:charge:9>.displayName = "Carbon Electrode";
<railcraft:charge:10>.displayName = "Silver Electrode";

# Ender Dust -- add recipe for TE Pulverizer
Pulverizer.addRecipe(<railcraft:dust:6>, <minecraft:ender_pearl>, 8000);
