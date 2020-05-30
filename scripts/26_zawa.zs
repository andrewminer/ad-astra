import crafttweaker.item.IItemStack;

# Blubber -- allow to be used for fuel & rendered into cooking oil
furnace.setFuel(<zawa:blubber>, 800);
recipes.addShapeless(<harvestcraft:oliveoilitem> * 4, [<ore:toolPot>.reuse(), <zawa:blubber>]);

# Cooked Beef -- add ZAWA cooked beef to the list
var zawaCookedBeef = [<zawa:cetacean_meat_cooked>, <zawa:large_meat_cooked>] as IItemStack[];
for item in zawaCookedBeef {
    <ore:listAllbeefcooked>.add(item);
}

# Cooked Duck -- add ZAWA cooked duck to the list
var zawaCookedDuck = [<zawa:bird_meat_cooked>] as IItemStack[];
for item in zawaCookedDuck {
    <ore:listAllduckcooked>.add(item);
}

# Cooked Fish -- add ZAWA cooked fish to the list
var zawaCookedFish = [<zawa:cooked_cichlid>, <zawa:cooked_crab_leg>, <zawa:cooked_frog_leg>] as IItemStack[];
for item in zawaCookedFish {
    <ore:listAllfishcooked>.add(item);
}

# Cooked Meat -- add ZAWA cooked meats to the all meats list
var zawaCookedMeats = [
    <zawa:bird_meat_cooked>,
    <zawa:bush_meat_cooked>,
    <zawa:carnivore_meat_cooked>,
    <zawa:cetacean_meat_cooked>,
    <zawa:large_meat_cooked>,
    <zawa:rat_cooked>,
    <zawa:reptile_meat_cooked>,
] as IItemStack[];
for item in zawaCookedMeats {
    <ore:listAllmeatcooked>.add(item);
}

# Cooked Rabbit -- add ZAWA cooked rabbit to the list
var zawaCookedRabbit = [<zawa:rat_cooked>] as IItemStack[];
for item in zawaCookedRabbit {
    <ore:listAllrabbitcooked>.add(item);
}

# Cooked Venison -- add ZAWA cooked venison to the list
var zawaCookedVenison = [<zawa:bush_meat_cooked>] as IItemStack[];
for item in zawaCookedVenison {
    <ore:listAllvenisoncooked>.add(item);
}

# Fur Chestplate -- require thick fur
recipes.remove(<zawa:fur_chest>);
recipes.addShaped(<zawa:fur_chest>, [
    [<zawa:thick_fur>, null,             <zawa:thick_fur>],
    [<zawa:thick_fur>, <zawa:thick_fur>, <zawa:thick_fur>],
    [<zawa:thick_fur>, <zawa:thick_fur>, <zawa:thick_fur>],
]);

# Fur Hood -- require thick fur
recipes.remove(<zawa:fur_hood>);
recipes.addShaped(<zawa:fur_hood>, [
    [<zawa:thick_fur>, <zawa:thick_fur>, <zawa:thick_fur>],
    [<zawa:thick_fur>, null,             <zawa:thick_fur>],
]);

# Fur Leggings -- require thick fur
recipes.remove(<zawa:fur_legs>);
recipes.addShaped(<zawa:fur_legs>, [
    [<zawa:thick_fur>, <zawa:thick_fur>, <zawa:thick_fur>],
    [<zawa:thick_fur>, null,             <zawa:thick_fur>],
    [<zawa:thick_fur>, null,             <zawa:thick_fur>],
]);

# Fur Boots -- require thick fur
recipes.remove(<zawa:fur_boots>);
recipes.addShaped(<zawa:fur_boots>, [
    [<zawa:thick_fur>, null, <zawa:thick_fur>],
    [<zawa:thick_fur>, null, <zawa:thick_fur>],
]);

# Raw Beef -- add ZAWA meats to the raw meat list
var zawaRawBeef = [<zawa:cetacean_meat_raw>, <zawa:large_meat_raw>] as IItemStack[];
for item in zawaRawBeef {
    <ore:listAllbeefraw>.add(item);
}

# Raw Duck -- add ZAWA meats to the raw duck list
var zawaRawBird = [<zawa:bird_meat>] as IItemStack[];
for item in zawaRawBird {
    <ore:listAllduckraw>.add(item);
}

# Raw Fish -- add ZAWA fish to the raw fish list
var zawaRawFish = [<zawa:raw_cichlid>, <zawa:raw_crab_leg>, <zawa:raw_frog_leg>] as IItemStack[];
for item in zawaRawFish {
    <ore:listAllfishfresh>.add(item);
    <ore:listAllfishraw>.add(item);
}

# Raw Meat -- add ZAWA meats to the raw meat list
var zawaRawMeat = [
    <zawa:bird_meat>,
    <zawa:bush_meat_raw>,
    <zawa:carnivore_meat_raw>,
    <zawa:cetacean_meat_raw>,
    <zawa:large_meat_raw>,
    <zawa:rat_raw>,
    <zawa:reptile_meat_raw>,
] as IItemStack[];
for item in zawaRawMeat {
    <ore:listAllmeatraw>.add(item);
}

# Raw Rabbit -- add ZAWA fish to the raw rabbit list
var zawaRawRabbit = [<zawa:rat_raw>] as IItemStack[];
for item in zawaRawRabbit {
    <ore:listAllrabbitraw>.add(item);
}

# Raw Venison -- add ZAWA meats to the venison list
var zawaRawVenison = [<zawa:bush_meat_raw>] as IItemStack[];
for item in zawaRawVenison {
    <ore:listAllvenisonraw>.add(item);
}

# Salt Lick -- use salt instead of sugar
recipes.remove(<zawa:salt_lick>);
recipes.addShaped(<zawa:salt_lick>, [
    [null, <ore:stickWood>, null],
    [<ore:foodSalt>, <ore:stickWood>, <ore:foodSalt>],
    [<ore:foodSalt>, <ore:foodSalt>, <ore:foodSalt>],
]);

# Steel Bars -- actually require steel
recipes.remove(<zawa:steel_bars>);
recipes.addShaped(<zawa:steel_bars>, [
    [<ore:ingotSteel>, null,             <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [<ore:ingotSteel>, null,             <ore:ingotSteel>],
]);
