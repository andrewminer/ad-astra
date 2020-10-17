import mods.jei.JEI;

########################################################################################################################

var ids = [] as int[];


########################################################################################################################

# Advanced Rocketry -- Titanium Iridium Alloy Gear -- remove unused gear
JEI.removeAndHide(<advancedrocketry:productgear:1>);

# Chisel -- Block of Charcoal -- remove recipe which conflicts with TE
recipes.remove(<chisel:block_charcoal>);

# Fist Full of Hay
JEI.removeAndHide(<fistful_of_hay:logo>);

# Minecraft
JEI.removeAndHide(<minecraft:boat>);
JEI.removeAndHide(<minecraft:acacia_boat>);
JEI.removeAndHide(<minecraft:birch_boat>);
JEI.removeAndHide(<minecraft:dark_oak_boat>);
JEI.removeAndHide(<minecraft:jungle_boat>);
JEI.removeAndHide(<minecraft:spruce_boat>);

# LibVulpes -- Steel Gear -- remove duplicate gears in favor of Thermal Expansion
JEI.removeAndHide(<libvulpes:productgear:6>);

# Mowzie's Mobs
JEI.removeAndHide(<mowziesmobs:mob_remover>);
JEI.removeAndHide(<mowziesmobs:test_structure>);

# Railcraft -- Gears -- remove duplicated in preference of Thermal Foundation
ids = [1, 2, 4, 5] as int[];
for i in ids {
    JEI.removeAndHide(<railcraft:gear>.definition.makeStack(i));
}

# Railcraft -- Ingots -- remove duplicates in favor of Thermal Foundation
ids = [0, 1, 2, 3, 4, 5, 6, 7] as int[];
for i in ids {
    JEI.removeAndHide(<railcraft:ingot>.definition.makeStack(i));
}

# Refined Storage -- Silicon -- remove in preference for Advanced Rocketry's Silicon
JEI.removeAndHide(<refinedstorage:silicon>);

# RFTools -- remove all power cells in preference for Thermal Expansion Energy Cells
JEI.removeAndHide(<rftools:powercell>);
JEI.removeAndHide(<rftools:powercell_advanced>);
JEI.removeAndHide(<rftools:powercell_card>);
JEI.removeAndHide(<rftools:powercell_creative>);
JEI.removeAndHide(<rftools:powercell_simple>);

# Thermal Foundation -- Coins -- remove all but the silver coins
ids = [0, 64, 65, 67, 68, 69, 71, 72, 96, 97, 98, 99, 100, 101, 102, 103] as int[];
for i in ids {
    JEI.removeAndHide(<thermalfoundation:coin>.definition.makeStack(i));
}

# Thermal Foundation -- Gears -- remove unused gears
ids = [22, 23, 26, 27, 96, 260, 262, 263, 264, 295] as int[];
for i in ids {
    JEI.removeAndHide(<thermalfoundation:material>.definition.makeStack(i));
}

# Vehicles Mod
JEI.removeAndHide(<vehicle:fluid_pipe>);
JEI.removeAndHide(<vehicle:fluid_pump>);

# ZAWA
JEI.removeAndHide(<zawa:atv>);
JEI.removeAndHide(<zawa:coin>);
JEI.removeAndHide(<zawa:hunting_rifle>);
JEI.removeAndHide(<zawa:off_road_car>);
JEI.removeAndHide(<zawa:tire>);
JEI.removeAndHide(<zawa:tranquilizer_dart>);
JEI.removeAndHide(<zawa:tranquilizer_dart_strong>);
JEI.removeAndHide(<zawa:tranquilizer_gun>);
