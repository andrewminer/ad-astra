# Transistor — convert to more compatible recipe
recipes.remove(<opencomputers:material:6>);
recipes.addShaped(<opencomputers:material:6> * 4, [
    [<ore:nuggetIron>],
    [<ore:plateSilicon>],
]);

# Raw Circuit Board — convert to more compatible recipe
recipes.remove(<opencomputers:material:2>);
recipes.addShapeless(<opencomputers:material:2>, [
    <ore:dyeGreen>, <ore:plateSilicon>, <ore:nuggetGold>
]);
