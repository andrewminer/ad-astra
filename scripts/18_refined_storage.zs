# Raw Basic Processor -- use more compatible recipe
recipes.remove(<refinedstorage:processor:0>);
recipes.addShapeless(<refinedstorage:processor:0>, [
    <refinedstorage:processor_binding>, <ore:ingotIron>, <ore:dustRedstone>, <ore:waferSilicon>
]);

# Raw Improved Processor -- use more compatible recipe
recipes.remove(<refinedstorage:processor:1>);
recipes.addShapeless(<refinedstorage:processor:1>, [
    <refinedstorage:processor_binding>, <ore:ingotGold>, <ore:dustRedstone>, <ore:waferSilicon>
]);

# Raw Advanced Processor -- use more compatible recipe
recipes.remove(<refinedstorage:processor:2>);
recipes.addShapeless(<refinedstorage:processor:2>, [
    <refinedstorage:processor_binding>, <ore:gemDiamond>, <ore:dustRedstone>, <ore:waferSilicon>
]);
