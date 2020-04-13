# Fuel Drum — replace with more compatible recipe
recipes.remove(<vehicle:fuel_drum>);
recipes.addShaped(<vehicle:fuel_drum>, [
    [<railcraft:tank_iron_wall>],
    [<railcraft:tank_iron_wall>],
    [<railcraft:tank_iron_wall>],
]);

# Industrial Fuel Drum — replace with more compatible recipe
recipes.remove(<vehicle:fuel_drum>);
recipes.addShaped(<vehicle:fuel_drum>, [
    [<railcraft:tank_steel_wall>],
    [<railcraft:tank_steel_wall>],
    [<railcraft:tank_steel_wall>],
]);

# Small Engine: Wood Tier — replace with harder recipe
recipes.remove(<vehicle:small_engine:0>);
recipes.addShaped(<vehicle:small_engine:0>, [
    [<ore:plankWood>, <thermalfoundation:material:513>, <ore:plankWood>],
    [<ore:stickIron>, <ore:stickIron>, <ore:gearIron>],
    [<railcraft:tank_iron_wall>, <railcraft:tank_iron_wall>, <railcraft:tank_iron_valve>],
]);

# Small Engine: Stone Tier — replace with harder recipe
recipes.remove(<vehicle:small_engine:1>);
recipes.addShaped(<vehicle:small_engine:1>, [
    [<ore:stone>, <thermalfoundation:material:513>, <ore:stone>],
    [<ore:stickIron>, <ore:stickIron>, <ore:gearIron>],
    [<railcraft:tank_iron_wall>, <railcraft:tank_iron_wall>, <railcraft:tank_iron_valve>],
]);

# Small Engine: Iron Tier — replace with harder recipe
recipes.remove(<vehicle:small_engine:2>);
recipes.addShaped(<vehicle:small_engine:2>, [
    [<ore:ingotIron>, <thermalfoundation:material:513>, <ore:ingotIron>],
    [<ore:stickIron>, <ore:stickIron>, <ore:gearIron>],
    [<railcraft:tank_iron_wall>, <railcraft:tank_iron_wall>, <railcraft:tank_iron_valve>],
]);

# Small Engine: Gold Tier — replace with harder recipe
recipes.remove(<vehicle:small_engine:3>);
recipes.addShaped(<vehicle:small_engine:3>, [
    [<ore:ingotGold>, <thermalfoundation:material:513>, <ore:ingotGold>],
    [<ore:stickIron>, <ore:stickIron>, <ore:gearIron>],
    [<railcraft:tank_iron_wall>, <railcraft:tank_iron_wall>, <railcraft:tank_iron_valve>],
]);

# Small Engine: Diamond Tier — replace with harder recipe
recipes.remove(<vehicle:small_engine:4>);
recipes.addShaped(<vehicle:small_engine:4>, [
    [<ore:gemDiamond>, <thermalfoundation:material:513>, <ore:gemDiamond>],
    [<ore:stickIron>, <ore:stickIron>, <ore:gearIron>],
    [<railcraft:tank_iron_wall>, <railcraft:tank_iron_wall>, <railcraft:tank_iron_valve>],
]);

#m Large Engine: Wood Tier — replace with harder recipe
recipes.remove(<vehicle:large_engine:0>);
recipes.addShaped(<vehicle:large_engine:0>, [
    [<ore:plankWood>, <thermalfoundation:material:513>, <ore:plankWood>],
    [<ore:stickSteel>, <ore:stickSteel>, <ore:gearSteel>],
    [<railcraft:tank_steel_wall>, <railcraft:tank_steel_wall>, <railcraft:tank_steel_valve>],
]);

# Large Engine: Stone Tier — replace with harder recipe
recipes.remove(<vehicle:large_engine:1>);
recipes.addShaped(<vehicle:large_engine:1>, [
    [<ore:stone>, <thermalfoundation:material:513>, <ore:stone>],
    [<ore:stickSteel>, <ore:stickSteel>, <ore:gearSteel>],
    [<railcraft:tank_steel_wall>, <railcraft:tank_steel_wall>, <railcraft:tank_steel_valve>],
]);

# Large Engine: Iron Tier — replace with harder recipe
recipes.remove(<vehicle:large_engine:2>);
recipes.addShaped(<vehicle:large_engine:2>, [
    [<ore:ingotIron>, <thermalfoundation:material:513>, <ore:ingotIron>],
    [<ore:stickSteel>, <ore:stickSteel>, <ore:gearSteel>],
    [<railcraft:tank_steel_wall>, <railcraft:tank_steel_wall>, <railcraft:tank_steel_valve>],
]);

# Large Engine: Gold Tier — replace with harder recipe
recipes.remove(<vehicle:large_engine:3>);
recipes.addShaped(<vehicle:large_engine:3>, [
    [<ore:ingotGold>, <thermalfoundation:material:513>, <ore:ingotGold>],
    [<ore:stickSteel>, <ore:stickSteel>, <ore:gearSteel>],
    [<railcraft:tank_steel_wall>, <railcraft:tank_steel_wall>, <railcraft:tank_steel_valve>],
]);

# Large Engine: Diamond Tier — replace with harder recipe
recipes.remove(<vehicle:large_engine:4>);
recipes.addShaped(<vehicle:large_engine:4>, [
    [<ore:gemDiamond>, <thermalfoundation:material:513>, <ore:gemDiamond>],
    [<ore:stickSteel>, <ore:stickSteel>, <ore:gearSteel>],
    [<railcraft:tank_steel_wall>, <railcraft:tank_steel_wall>, <railcraft:tank_steel_valve>],
]);

# Electric Engine: Wood Tier — replace with a harder recipe
recipes.remove(<vehicle:electric_engine:0>);
recipes.addShaped(<vehicle:electric_engine:0>, [
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plankWood>],
    [<ore:coilCopper>, <ore:coilCopper>, <ore:stickIron>],
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plankWood>],
]);

# Electric Engine: Stone Tier — replace with a harder recipe
recipes.remove(<vehicle:electric_engine:1>);
recipes.addShaped(<vehicle:electric_engine:1>, [
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:stone>],
    [<ore:coilCopper>, <ore:coilCopper>, <ore:stickIron>],
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:stone>],
]);

# Electric Engine: Iron Tier — replace with a harder recipe
recipes.remove(<vehicle:electric_engine:2>);
recipes.addShaped(<vehicle:electric_engine:2>, [
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:ingotIron>],
    [<ore:coilCopper>, <ore:coilCopper>, <ore:stickIron>],
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:ingotIron>],
]);

# Electric Engine: Gold Tier — replace with a harder recipe
recipes.remove(<vehicle:electric_engine:3>);
recipes.addShaped(<vehicle:electric_engine:3>, [
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:ingotGold>],
    [<ore:coilCopper>, <ore:coilCopper>, <ore:stickIron>],
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:ingotGold>],
]);

# Electric Engine: Diamond Tier — replace with a harder recipe
recipes.remove(<vehicle:electric_engine:4>);
recipes.addShaped(<vehicle:electric_engine:4>, [
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:gemDiamond>],
    [<ore:coilCopper>, <ore:coilCopper>, <ore:stickIron>],
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:gemDiamond>],
]);
