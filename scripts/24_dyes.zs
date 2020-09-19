import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Pulverizer;


########################################################################################################################

function vanillaDye(color as string) as IItemStack {
    var dyes = {
        "black": <minecraft:dye:0>,
        "blue": <minecraft:dye:4>,
        "brown": <minecraft:dye:3>,
        "cyan": <minecraft:dye:6>,
        "gray": <minecraft:dye:8>,
        "green": <minecraft:dye:2>,
        "light blue": <minecraft:dye:12>,
        "light gray": <minecraft:dye:7>,
        "lime": <minecraft:dye:10>,
        "magenta": <minecraft:dye:13>,
        "orange": <minecraft:dye:14>,
        "pink": <minecraft:dye:9>,
        "purple": <minecraft:dye:5>,
        "red": <minecraft:dye:1>,
        "white": <minecraft:dye:15>,
        "yellow": <minecraft:dye:11>,
    } as IItemStack[string];

    return dyes[color];
}

function dyeDict(color as string) as IOreDictEntry {
    var colors = {
        "black": <ore:dyeBlack>,
        "blue": <ore:dyeBlue>,
        "brown": <ore:dyeBrown>,
        "cyan": <ore:dyeCyan>,
        "gray": <ore:dyeGray>,
        "green": <ore:dyeGreen>,
        "light blue": <ore:dyeLightBlue>,
        "light gray": <ore:dyeLightGray>,
        "lime": <ore:dyeLime>,
        "magenta": <ore:dyeMagenta>,
        "orange": <ore:dyeOrange>,
        "pink": <ore:dyePink>,
        "purple": <ore:dyePurple>,
        "red": <ore:dyeRed>,
        "white": <ore:dyeWhite>,
        "yellow": <ore:dyeYellow>,
    } as IOreDictEntry[string];

    return colors[color];
}

function pigment(color as string) as IItemStack {
    var colors = {
        "black": 0,
        "blue": 4,
        "brown": 3,
        "cyan": 6,
        "gray": 8,
        "green": 2,
        "light blue": 12,
        "light gray": 7,
        "lime": 10,
        "magenta": 13,
        "orange": 14,
        "pink": 9,
        "purple": 5,
        "red": 1,
        "white": 15,
        "yellow": 11,
    } as int[string];

    return <thermalfoundation:dye>.definition.makeStack(colors[color]);
}

var allColors = [
    "black", "blue", "brown", "cyan", "gray", "green", "light blue", "light gray", "lime", "magenta", "orange",
    "pink", "purple", "red", "white", "yellow"
] as string[];

var mortar = <harvestcraft:mortarandpestleitem>.giveBack();
var waterBucket = <minecraft:water_bucket>.giveBack(<minecraft:bucket>);


########################################################################################################################

# Remove vanilla dyes from ore dictionaries
for color in allColors {
    var dye as IItemStack = vanillaDye(color);
    dyeDict(color).remove(dye);
    <ore:dye>.remove(dye);
}

# Add recipes for turning dyes into pigments
var waterSoluableDyes = [
    "cyan", "gray", "light blue", "light gray", "lime", "magenta", "orange", "pink", "purple"
] as string[];
for color in waterSoluableDyes {
    var dye as IItemStack = vanillaDye(color);
    var pigment as IItemStack = pigment(color);
    recipes.addShaped(pigment * 7, [
        [dye, dye, dye],
        [dye, waterBucket, dye],
        [dye, null, dye],
    ]);
}

var grindableDyes = [
    "black", "blue", "brown", "green", "red", "white", "yellow"
] as string[];
for color in grindableDyes {
    var dye as IItemStack = vanillaDye(color);
    var pigment as IItemStack = pigment(color);
    recipes.addShaped(pigment * 7, [
        [dye, dye, dye],
        [dye, waterBucket, dye],
        [dye, mortar, dye],
    ]);
}

# Add recipes for turning pigments into dyes
var vanillaDyeColors = [
    "cyan", "gray", "light blue", "light gray", "lime", "magenta", "orange", "pink", "purple",
] as string[];
for color in vanillaDyeColors {
    var dye as IItemStack = vanillaDye(color);
    var pigment as IItemStack = pigment(color);
    recipes.addShaped(dye * 8, [
        [pigment, pigment, pigment],
        [pigment, <minecraft:sand>, pigment],
        [pigment, pigment, pigment],
    ]);
}

# Remove recipes to make vanilla dyes by mixing
recipes.removeByRecipeName("minecraft:cyan_dye");
recipes.removeByRecipeName("minecraft:gray_dye");
recipes.removeByRecipeName("minecraft:light_blue_dye_from_lapis_bonemeal");
recipes.removeByRecipeName("minecraft:light_gray_dye_from_gray_bonemeal");
recipes.removeByRecipeName("minecraft:light_gray_dye_from_ink_bonemeal");
recipes.removeByRecipeName("minecraft:lime_dye");
recipes.removeByRecipeName("minecraft:magenta_dye_from_lapis_ink_bonemeal");
recipes.removeByRecipeName("minecraft:magenta_dye_from_lapis_red_pink");
recipes.removeByRecipeName("minecraft:magenta_dye_from_purple_and_pink");
recipes.removeByRecipeName("minecraft:orange_dye_from_red_yellow");
recipes.removeByRecipeName("minecraft:pink_dye_from_red_bonemeal");
recipes.removeByRecipeName("minecraft:purple_dye");


########################################################################################################################

# Add recipes to create pigments from other things
var pulverizedCharcoal = <thermalfoundation:material:769>;
var pulverizedCoal = <thermalfoundation:material:768>;

Pulverizer.addRecipe(pigment("white") * 4, <chisel:marble2:7>, 4000);
Pulverizer.addRecipe(pigment("blue") * 4, <minecraft:dye:4>, 4000);
Pulverizer.addRecipe(pigment("black"), <minecraft:dye:0>, 500);
Pulverizer.addRecipe(pigment("green"), <minecraft:cactus>, 500);

recipes.addShaped(pigment("black") * 8, [
    [pulverizedCharcoal, pulverizedCharcoal, pulverizedCharcoal],
    [pulverizedCharcoal, waterBucket, pulverizedCharcoal],
    [pulverizedCharcoal, pulverizedCharcoal, pulverizedCharcoal],
]);
recipes.addShaped(pigment("black") * 8, [
    [pulverizedCoal, pulverizedCoal, pulverizedCoal],
    [pulverizedCoal, waterBucket, pulverizedCoal],
    [pulverizedCoal, pulverizedCoal, pulverizedCoal],
]);
recipes.addShaped(pigment("brown") * 7, [
    [<ore:cropCoffee>, <ore:cropCoffee>, <ore:cropCoffee>],
    [<ore:cropCoffee>, waterBucket, <ore:cropCoffee>],
    [<ore:cropCoffee>, mortar, <ore:cropCoffee>],
]);
recipes.addShaped(pigment("yellow") * 7, [
    [<ore:cropMustard>, <ore:cropMustard>, <ore:cropMustard>],
    [<ore:cropMustard>, waterBucket, <ore:cropMustard>],
    [<ore:cropMustard>, mortar, <ore:cropMustard>],
]);

# switch to a re-usable mortar for the follow recipes
mortar = <harvestcraft:mortarandpestleitem>.reuse();

# Add recipes to crush various plants into pigments
recipes.addShapeless(pigment("blue"), [mortar, <harvestcraft:blueberryitem>]);
recipes.addShapeless(pigment("cyan"), [mortar, <harvestcraft:candleberryitem>]);
recipes.addShapeless(pigment("light blue"), [mortar, <harvestcraft:juniperberryitem>]);
recipes.addShapeless(pigment("lime"), [mortar, <harvestcraft:oliveitem>]);
recipes.addShapeless(pigment("magenta"), [mortar, <harvestcraft:elderberryitem>]);
recipes.addShapeless(pigment("magenta"), [mortar, <harvestcraft:mulberryitem>]);
recipes.addShapeless(pigment("pink"), [mortar, <harvestcraft:raspberryitem>]);
recipes.addShapeless(pigment("purple"), [mortar, <harvestcraft:blackberryitem>]);
recipes.addShapeless(pigment("purple"), [mortar, <harvestcraft:huckleberryitem>]);
recipes.addShapeless(pigment("red"), [mortar, <harvestcraft:cranberryitem>]);
recipes.addShapeless(pigment("red"), [mortar, <harvestcraft:strawberryitem>]);
recipes.addShapeless(pigment("yellow"), [mortar, <harvestcraft:gooseberryitem>]);
recipes.addShapeless(pigment("yellow"), [mortar, <harvestcraft:mustardseedsitem>]);

# Add recipes to mix pigments
recipes.addShapeless(pigment("cyan") * 2, [dyeDict("blue"), dyeDict("green")]);
recipes.addShapeless(pigment("gray") * 2, [dyeDict("white"), dyeDict("black")]);
recipes.addShapeless(pigment("green") * 2, [dyeDict("black"), dyeDict("lime")]);
recipes.addShapeless(pigment("light blue") * 2, [dyeDict("white"), dyeDict("blue")]);
recipes.addShapeless(pigment("light gray") * 2, [dyeDict("gray"), dyeDict("white")]);
recipes.addShapeless(pigment("light gray") * 3, [dyeDict("black"), dyeDict("white"), dyeDict("white")]);
recipes.addShapeless(pigment("lime") * 2, [dyeDict("white"), dyeDict("green")]);
recipes.addShapeless(pigment("magenta") * 2, [dyeDict("pink"), dyeDict("purple")]);
recipes.addShapeless(pigment("magenta") * 3, [dyeDict("red"), dyeDict("blue"), dyeDict("pink")]);
recipes.addShapeless(pigment("magenta") * 4, [dyeDict("red"), dyeDict("blue"), dyeDict("red"), dyeDict("white")]);
recipes.addShapeless(pigment("orange") * 2, [dyeDict("red"), dyeDict("yellow")]);
recipes.addShapeless(pigment("pink") * 2, [dyeDict("white"), dyeDict("red")]);
recipes.addShapeless(pigment("purple") * 2, [dyeDict("blue"), dyeDict("red")]);
