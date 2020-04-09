import mods.jei.JEI;


########################################################################################################################

# BiblioCraft -- Atlas -- remove in preference for Antique Atlas
JEI.removeAndHide(<bibliocraft:atlasbook>);

# DaVinci's Vessels -- Balloon -- remove as airships are disabled
var ids = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16] as int[];
for i in ids {
    JEI.removeAndHide(<davincisvessels:balloon>.definition.makeStack(i));
}

# Refined Storage -- Silicon -- remove in preference for Advanced Rocketry's Silicon
JEI.removeAndHide(<refinedstorage:silicon>);

# Thermal Foundation -- Coins -- remove all but the gold coins
ids = [0, 64, 65, 66, 67, 68, 69, 70, 71, 72, 96, 97, 98, 99, 100, 101, 102, 103] as int[];
for i in ids {
    JEI.removeAndHide(<thermalfoundation:coin>.definition.makeStack(i));
}

# Vehicles Mode
JEI.removeAndHide(<vehicle:fluid_pipe>);
JEI.removeAndHide(<vehicle:fluid_pump>);
