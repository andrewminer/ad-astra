import mods.thermalexpansion.InductionSmelter;
import mods.jei.JEI;


########################################################################################################################

# Silicon Wafer -- remove in favor of Advanced Rocketry's Silicon items
JEI.removeAndHide(<projectred-core:resource_item:300>);
JEI.removeAndHide(<projectred-core:resource_item:301>);

# Electrotine -- remove Electrotine and all related items
JEI.removeAndHide(<projectred-core:resource_item:104>);
JEI.removeAndHide(<projectred-core:resource_item:105>);
JEI.removeAndHide(<projectred-core:resource_item:252>);
JEI.removeAndHide(<projectred-core:resource_item:312>);
JEI.removeAndHide(<projectred-core:resource_item:342>);
JEI.removeAndHide(<projectred-transmission:wire:34>);
JEI.removeAndHide(<projectred-transmission:framed_wire:34>);

# Red Silicon Compound -- replace recipe to use Advanced Rockets silicon
recipes.remove(<projectred-core:resource_item:310>);
recipes.addShaped(<projectred-core:resource_item:310>, [
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
    [<ore:dustRedstone>, <advancedrocketry:wafer>, <ore:dustRedstone>],
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
]);

# Glowing Silicon Compound -- replace recipe to use Advanced Rockets silicon
recipes.remove(<projectred-core:resource_item:311>);
recipes.addShaped(<projectred-core:resource_item:311>, [
    [<ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>],
    [<ore:dustGlowstone>, <advancedrocketry:wafer>, <ore:dustGlowstone>],
    [<ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>],
]);

# Circuit Plate -- replace with more integrated recipe
recipes.remove(<projectred-core:resource_item:0>);
InductionSmelter.addRecipe(
    <projectred-core:resource_item:0> * 8,
    <minecraft:stone:0>,
    <railcraft:ingot:8>,
    4000
);
