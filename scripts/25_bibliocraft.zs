# Compass -- Make the compass easier to create and change its name
<bibliocraft:compass>.displayName = "Waypoint Compass";
recipes.remove(<bibliocraft:compass>);
recipes.addShaped(<bibliocraft:compass>, [
    [null, <ore:ingotBrass>, null],
    [<ore:ingotBrass>, <minecraft:compass>, <ore:ingotBrass>],
    [null, <ore:ingotBrass>, null],
]);
