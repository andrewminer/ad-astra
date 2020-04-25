# Knife -- change to something reasonable
recipes.remove(<cfm:item_knife>);
recipes.addShaped(<cfm:item_knife>, [
    [<ore:bladeMetalIngot>],
    [<ore:stickWood>],
]);

# Leather -- allow using knife to turn fur into leather
recipes.addShapeless(<minecraft:leather>, [
    <cfm:item_knife>.anyDamage().transformDamage(), <ore:zawaFur>
]);
