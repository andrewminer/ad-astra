import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Infuser;
import mods.jei.JEI;

########################################################################################################################

# Remove unused items
JEI.removeAndHide(<better_diving:acid_mushroom>);
JEI.removeAndHide(<better_diving:battery>);
JEI.removeAndHide(<better_diving:copper_ore>);
JEI.removeAndHide(<better_diving:fabricator>);
JEI.removeAndHide(<better_diving:gold>);
JEI.removeAndHide(<better_diving:habitat_builder>);
JEI.removeAndHide(<better_diving:lead>);
JEI.removeAndHide(<better_diving:lubricant>);
JEI.removeAndHide(<better_diving:seagrass>);
JEI.removeAndHide(<better_diving:seagrass_tall_bottom>);
JEI.removeAndHide(<better_diving:silver_ore>);
JEI.removeAndHide(<better_diving:solar_panel>);
JEI.removeAndHide(<better_diving:structure_block>);
JEI.removeAndHide(<better_diving:titanium>);
JEI.removeAndHide(<better_diving:titanium_ingot>);
JEI.removeAndHide(<better_diving:wiring_kit>);

# Diving Mask — replace with a recipe more similar to vanilla helmet
recipes.remove(<better_diving:diving_mask>);
recipes.addShaped(<better_diving:diving_mask>, [
    [<better_diving:silicone_rubber>, <better_diving:silicone_rubber>, <better_diving:silicone_rubber>],
    [<better_diving:silicone_rubber>, <minecraft:glass_pane:0>, <better_diving:silicone_rubber>],
]);

# Fiber Mesh — replace with more reasonable recipe
recipes.remove(<better_diving:fiber_mesh>);
recipes.addShaped(<better_diving:fiber_mesh>, [
    [<ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, <better_diving:silicone_rubber>, <ore:string>],
    [<ore:string>, <ore:string>, <ore:string>],
]);

# Fins — change to recipe closer to vanilla
recipes.remove(<better_diving:fins>);
recipes.addShaped(<better_diving:fins>, [
    [<better_diving:silicone_rubber>, null, <better_diving:silicone_rubber>],
    [<better_diving:silicone_rubber>, null, <better_diving:silicone_rubber>],
]);

# High-Capacity O2 Tank — replace with cheaper recipe
recipes.remove(<better_diving:high_capacity_o2_tank>);
recipes.addShaped(<better_diving:high_capacity_o2_tank>, [
    [<ore:plateSteel>],
    [<ore:plateSteel>],
    [<ore:plateSteel>],
]);

# Improved Wetsuit Leggings — replace with more compatible recipe
recipes.remove(<better_diving:improved_wetsuit_leggings>);
recipes.addShaped(<better_diving:improved_wetsuit_leggings>, [
    [<ore:plateSignalum>],
    [<better_diving:wetsuit_leggings>],
    [<ore:plateSignalum>],
]);

# Power Cell — replace recipe with one based on Thermal Expansion
recipes.remove(<better_diving:power_cell>);
recipes.addShaped(<better_diving:power_cell>, [
    [null, <better_diving:silicone_rubber>, null],
    [<better_diving:silicone_rubber>, <thermalexpansion:cell>, <better_diving:silicone_rubber>],
    [null, <better_diving:silicone_rubber>, null],
]);

# Rebreather — replace with better integrated recipe
recipes.remove(<better_diving:rebreather>);
recipes.addShaped(<better_diving:rebreather>, [
    [null, <better_diving:diving_mask>, null],
    [<better_diving:fiber_mesh>, <railcraft:charge:9>, <better_diving:fiber_mesh>],
]);

# Reinforced Diving Mask — change to more compatible recipe
recipes.remove(<better_diving:reinforced_diving_mask>);
recipes.addShaped(<better_diving:reinforced_diving_mask>, [
    [<ore:plateTitaniumAluminide>],
    [<better_diving:diving_mask>],
    [<ore:plateTitaniumAluminide>],
]);

# Reinforced Fins — change to more compatible recipe
recipes.remove(<better_diving:reinforced_fins>);
recipes.addShaped(<better_diving:reinforced_fins>, [
    [<ore:plateTitaniumAluminide>],
    [<better_diving:fins>],
    [<ore:plateTitaniumAluminide>],
]);

# Reinforced O2 Tank — change to more compatible recipe
recipes.remove(<better_diving:reinforced_o2_tank>);
recipes.addShaped(<better_diving:reinforced_o2_tank>, [
    [<ore:plateTitaniumAluminide>],
    [<better_diving:standard_o2_tank>],
    [<ore:plateTitaniumAluminide>],
]);

# Reinforced Wetsuit Leggings — change to more compatible recipe
recipes.remove(<better_diving:reinforced_wetsuit_leggings>);
recipes.addShaped(<better_diving:reinforced_wetsuit_leggings>, [
    [<ore:plateTitaniumAluminide>],
    [<better_diving:wetsuit_leggings>],
    [<ore:plateTitaniumAluminide>],
]);

# SeaBase Ladder — fix name & add more compatible recipe
<better_diving:seabase_ladder>.displayName = "SeaBase Ladder";
recipes.remove(<better_diving:seabase_ladder>);
recipes.addShaped(<better_diving:seabase_ladder> * 3, [
    [<ore:stickTitanium>, null, <ore:stickTitanium>],
    [<ore:stickTitanium>, <ore:stickTitanium>, <ore:stickTitanium>],
    [<ore:stickTitanium>, null, <ore:stickTitanium>],
]);

# SeaGlide — replace with more compatible recipe
# <better_diving:seaglide>.displayName = "SeaGlide";
# recipes.addShaped(<better_diving:seaglide>, [
#     [null, <better_diving:silicone_rubber>, null],
#     [<ore:plateAluminum>, <libvulpes:battery>, <ore:plateAluminum>],
#     [null, <vehicle:electric_engine:3>, null],
# ]);
# Disabled because there's no way to charge these things right now.
JEI.removeAndHide(<better_diving:seaglide>);

# SeaMoth — replace with more difficult recipe
recipes.remove(<better_diving:seamoth>);
recipes.addShaped(<better_diving:seamoth>, [
    [<ore:blockGlassHardened>, <better_diving:silicone_rubber>, <ore:plateTitaniumAluminide>],
    [<better_diving:silicone_rubber>, <advancedrocketry:structuretower>, <better_diving:power_cell>],
    [<ore:plateTitaniumAluminide>, <better_diving:high_capacity_o2_tank>, <vehicle:electric_engine:4>],
]);

# Silicone Rubber -- add recipe for using just the leaves
recipes.addShapeless(<better_diving:silicone_rubber>, [<better_diving:creepvine>, <better_diving:creepvine>]);

# Standard O2 Tank — replace with cheaper recipe
recipes.remove(<better_diving:standard_o2_tank>);
recipes.addShaped(<better_diving:standard_o2_tank>, [
    [<ore:plateIron>],
    [<ore:plateIron>],
    [<ore:plateIron>],
]);

# Wetsuit Leggings — replace with recipe more similar to vanilla
recipes.remove(<better_diving:wetsuit_leggings>);
recipes.addShaped(<better_diving:wetsuit_leggings>, [
    [<better_diving:fiber_mesh>, <better_diving:fiber_mesh>, <better_diving:fiber_mesh>],
    [<better_diving:silicone_rubber>, null, <better_diving:silicone_rubber>],
    [<better_diving:silicone_rubber>, null, <better_diving:silicone_rubber>],
]);

# Ultra Glide Fins — change to more compatible recipe
recipes.remove(<better_diving:ultra_glide_fins>);
recipes.addShaped(<better_diving:ultra_glide_fins>, [
    [<ore:plateSignalum>],
    [<better_diving:fins>],
    [<ore:plateSignalum>],
]);
