import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Pulverizer;


########################################################################################################################

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

var waterBucket = <minecraft:water_bucket>.giveBack(<minecraft:bucket>);

# Add recipes to mix pigments
recipes.addShapeless(pigment("cyan") * 2, [pigment("blue"), pigment("green")]);
recipes.addShapeless(pigment("gray") * 2, [pigment("white"), pigment("black")]);
recipes.addShapeless(pigment("light blue") * 2, [pigment("white"), pigment("blue")]);
recipes.addShapeless(pigment("light gray") * 2, [pigment("gray"), pigment("white")]);
recipes.addShapeless(pigment("light gray") * 3, [pigment("black"), pigment("white"), pigment("white")]);
recipes.addShapeless(pigment("lime") * 2, [pigment("white"), pigment("green")]);
recipes.addShapeless(pigment("green") * 2, [pigment("black"), pigment("lime")]);
recipes.addShapeless(pigment("magenta") * 2, [pigment("pink"), pigment("purple")]);
recipes.addShapeless(pigment("magenta") * 3, [pigment("red"), pigment("blue"), pigment("pink")]);
recipes.addShapeless(pigment("magenta") * 4, [pigment("red"), pigment("blue"), pigment("red"), pigment("white")]);
recipes.addShapeless(pigment("orange") * 2, [pigment("red"), pigment("yellow")]);
recipes.addShapeless(pigment("pink") * 2, [pigment("white"), pigment("red")]);
recipes.addShapeless(pigment("purple") * 2, [pigment("blue"), pigment("red")]);

# Add recipes to create pigments from other things
var pulverizedCharcoal = <thermalfoundation:material:768>;
var pulverizedCoal = <thermalfoundation:material:768>;

Pulverizer.addRecipe(pigment("white") * 4, <chisel:marble2:7>, 4000);
Pulverizer.addRecipe(pigment("blue") * 4, <minecraft:dye:4>, 4000);
Pulverizer.addRecipe(pigment("black"), <minecraft:dye:0>, 500);
Pulverizer.addRecipe(pigment("green"), <minecraft:cactus>, 500);

recipes.addShaped(pigment("white") * 8, [
    [<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>],
    [<minecraft:dye:15>, waterBucket, <minecraft:dye:15>],
    [<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>],
]);
recipes.addShaped(pigment("green") * 8, [
    [<minecraft:dye:2>, <minecraft:dye:2>, <minecraft:dye:2>],
    [<minecraft:dye:2>, waterBucket, <minecraft:dye:2>],
    [<minecraft:dye:2>, <minecraft:dye:2>, <minecraft:dye:2>],
]);
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

# Add recipes to crush various plants into pigments
var mortar = <harvestcraft:mortarandpestleitem>.reuse();

recipes.addShapeless(pigment("blue"), [mortar, <harvestcraft:blueberryitem>]);
recipes.addShapeless(pigment("cyan"), [mortar, <harvestcraft:candleberryitem>]);
recipes.addShapeless(pigment("light blue"), [mortar, <harvestcraft:juniperberryitem>]);
recipes.addShapeless(pigment("magenta"), [mortar, <harvestcraft:elderberryitem>]);
recipes.addShapeless(pigment("magenta"), [mortar, <harvestcraft:mulberryitem>]);
recipes.addShapeless(pigment("pink"), [mortar, <harvestcraft:raspberryitem>]);
recipes.addShapeless(pigment("purple"), [mortar, <harvestcraft:blackberryitem>]);
recipes.addShapeless(pigment("purple"), [mortar, <harvestcraft:huckleberryitem>]);
recipes.addShapeless(pigment("red"), [mortar, <harvestcraft:cranberryitem>]);
recipes.addShapeless(pigment("red"), [mortar, <harvestcraft:strawberryitem>]);
recipes.addShapeless(pigment("yellow"), [mortar, <harvestcraft:gooseberryitem>]);
recipes.addShapeless(pigment("yellow"), [mortar, <harvestcraft:mustardseedsitem>]);
recipes.addShapeless(pigment("brown"), [mortar, <harvestcraft:coffeebeanitem>]);
recipes.addShapeless(pigment("brown"), [mortar, <minecraft:dye:3>]);
recipes.addShapeless(pigment("lime"), [mortar, <harvestcraft:oliveitem>]);
