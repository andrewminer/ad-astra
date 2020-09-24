# Steam Engine -- replace with more compatible (and more difficult) recipe
recipes.remove(<davincisvessels:engine>);
recipes.addShaped(<davincisvessels:engine>, [
    [null, <ore:plateIron>, <ore:plateIron>],
    [<ore:stickIron>, <libvulpes:motor:0>, <thermalexpansion:machine:0>],
    [null, <ore:plateIron>, <ore:plateIron>],
]);

# Helm -- replace with more challenging recipe
recipes.remove(<davincisvessels:marker>);
recipes.addShaped(<davincisvessels:marker>, [
    [<ore:stickWood>, <ore:gearIron>, null],
    [<ore:plankWood>, <cathedral:cathedral_chain_various:0>, null],
    [<ore:stickWood>, <ore:gearIron>, <ore:plankWood>],
]);
