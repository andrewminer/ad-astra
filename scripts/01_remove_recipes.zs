import mods.jei.JEI;


########################################################################################################################

# Advanced Rocketry -- Titanium Iridium Alloy Gear -- remove unused gear
JEI.removeAndHide(<advancedrocketry:productgear:1>);

# BiblioCraft -- Atlas -- remove in preference for Antique Atlas
JEI.removeAndHide(<bibliocraft:atlasbook>);

# DaVinci's Vessels -- Balloon -- remove as airships are disabled
var ids = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16] as int[];
for i in ids {
    JEI.removeAndHide(<davincisvessels:balloon>.definition.makeStack(i));
}

# Fex's Small Money Mod (FSMM)
JEI.removeAndHide(<fcl:blueprinttable>);
JEI.removeAndHide(<fcl:workbench>);

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

# Thermal Foundation -- Coins -- remove all but the gold coins
ids = [0, 65, 67, 68, 69, 70, 71, 72, 96, 97, 98, 99, 100, 101, 102, 103] as int[];
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
