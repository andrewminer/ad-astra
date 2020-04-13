import mods.jei.JEI;

########################################################################################################################

# Biome Analyzer -- add missing recipe
recipes.addShaped(<infoaccessories:info_accessory:6>, [
    [null, <ore:ingotCopper>, null],
    [<ore:ingotCopper>, <ore:dustRedstone>, <ore:ingotCopper>],
    [null, <ore:ingotCopper>, null]
]);

# Calandar -- add missing recipe
recipes.addShaped(<infoaccessories:info_accessory:5>, [
    [<ore:nuggetBrass>, null, <ore:nuggetBrass>],
    [<ore:paper>, <ore:paper>, <ore:paper>],
    [<ore:paper>, <ore:paper>, <ore:paper>]
]);

# Depth Meter -- add missing recipe
recipes.addShaped(<infoaccessories:info_accessory:2>, [
    [null, <ore:ingotLead>, null],
    [<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>],
    [null, <ore:ingotLead>, null]
]);

# Sextant -- add missing recipe
recipes.addShaped(<infoaccessories:info_accessory:1>, [
    [<minecraft:glass_pane>, <ore:ingotBrass>, <minecraft:glass_pane>],
    [null, <ore:gearBrass>, null],
    [<ore:nuggetBrass>, <ore:nuggetBrass>, <ore:nuggetBrass>]
]);

# Slimey Compass -- add missing recipe
recipes.addShaped(<infoaccessories:info_accessory:4>, [
    [null, <ore:blockSlime>, null],
    [<ore:blockSlime>, <ore:dustRedstone>, <ore:blockSlime>],
    [null, <ore:blockSlime>, null]
]);

# Stopwatch -- add missing recipe
recipes.addShaped(<infoaccessories:info_accessory:0>, [
    [null, <ore:ingotTin>, null],
    [<ore:ingotTin>, <ore:dustRedstone>, <ore:ingotTin>],
    [null, <ore:ingotTin>, null]
]);

# Remote incomplete / WIP items
JEI.removeAndHide(<infoaccessories:info_accessory:3>);
JEI.removeAndHide(<infoaccessories:info_accessory:7>);
JEI.removeAndHide(<infoaccessories:info_accessory:8>);
JEI.removeAndHide(<infoaccessories:info_accessory:9>);
