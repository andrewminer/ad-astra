import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Pulverizer;

function dust(name as string) as IItemStack {
    var dusts = {
        "iron": <thermalfoundation:material:0>,
        "gold": <thermalfoundation:material:1>,
        "copper": <thermalfoundation:material:64>,
        "tin": <thermalfoundation:material:65>,
        "silver": <thermalfoundation:material:66>,
        "lead": <thermalfoundation:material:67>,
        "aluminum": <thermalfoundation:material:68>,
        "nickel": <thermalfoundation:material:69>,
        "platinum": <thermalfoundation:material:70>,
        "iridium": <thermalfoundation:material:71>,
        "mithril": <thermalfoundation:material:72>,
        "steel": null,
        "electrum": <thermalfoundation:material:97>,
        "invar": <thermalfoundation:material:98>,
        "bronze": <thermalfoundation:material:99>,
        "constantan": <thermalfoundation:material:100>,
        "signalum": <thermalfoundation:material:101>,
        "lumium": <thermalfoundation:material:102>,
        "enderium": <thermalfoundation:material:103>,
        "zinc": null,
        "titanium": <libvulpes:productdust:7>,
        "titanium aluminide": <advancedrocketry:productdust:0>,
        "titanium iridium": <advancedrocketry:productdust:1>,
        "fluxed electrum": <redstonearsenal:material:0>,
    } as IItemStack[string];

    return dusts[name];
}

function gear(name as string) as IItemStack {
    var ingots = {
        "iron": <thermalfoundation:material:24>,
        "gold": <thermalfoundation:material:25>,
        "copper": <thermalfoundation:material:256>,
        "tin": <thermalfoundation:material:257>,
        "silver": <thermalfoundation:material:258>,
        "lead": <thermalfoundation:material:259>,
        "aluminum": null,
        "nickel": <thermalfoundation:material:261>,
        "platinum": null,
        "iridium": null,
        "mithril": null,
        "steel": <thermalfoundation:material:288>,
        "electrum": <thermalfoundation:material:289>,
        "invar": <thermalfoundation:material:290>,
        "bronze": <thermalfoundation:material:291>,
        "constantan": <thermalfoundation:material:292>,
        "signalum": <thermalfoundation:material:293>,
        "lumium": <thermalfoundation:material:294>,
        "enderium": null,
        "zinc": null,
        "titanium": <libvulpes:productgear:7>,
        "titanium aluminide": <advancedrocketry:productgear:0>,
        "titanium iridium": null,
        "fluxed electrum": <redstonearsenal:material:96>,
    } as IItemStack[string];

    return ingots[name];
}

function ingot(name as string) as IItemStack {
    var ingots = {
        "iron": <minecraft:iron_ingot>,
        "gold": <minecraft:gold_ingot>,
        "copper": <thermalfoundation:material:128>,
        "tin": <thermalfoundation:material:129>,
        "silver": <thermalfoundation:material:130>,
        "lead": <thermalfoundation:material:131>,
        "aluminum": <thermalfoundation:material:132>,
        "nickel": <thermalfoundation:material:133>,
        "platinum": <thermalfoundation:material:134>,
        "iridium": <thermalfoundation:material:135>,
        "mithril": <thermalfoundation:material:136>,
        "steel": <thermalfoundation:material:160>,
        "electrum": <thermalfoundation:material:161>,
        "invar": <thermalfoundation:material:162>,
        "bronze": <thermalfoundation:material:163>,
        "constantan": <thermalfoundation:material:164>,
        "signalum": <thermalfoundation:material:165>,
        "lumium": <thermalfoundation:material:166>,
        "enderium": <thermalfoundation:material:167>,
        "zinc": <railcraft:ingot:8>,
        "titanium": <libvulpes:productingot:7>,
        "titanium aluminide": <advancedrocketry:productingot:0>,
        "titanium iridium": <advancedrocketry:productingot:1>,
        "fluxed electrum": <redstonearsenal:material:32>,
    } as IItemStack[string];

    return ingots[name];
}

function nugget(name as string) as IItemStack {
    var ingots = {
        "iron": <minecraft:iron_ingot>,
        "gold": <minecraft:gold_ingot>,
        "copper": <thermalfoundation:material:128>,
        "tin": <thermalfoundation:material:129>,
        "silver": <thermalfoundation:material:130>,
        "lead": <thermalfoundation:material:131>,
        "aluminum": <thermalfoundation:material:132>,
        "nickel": <thermalfoundation:material:133>,
        "platinum": <thermalfoundation:material:134>,
        "iridium": <thermalfoundation:material:135>,
        "mithril": <thermalfoundation:material:136>,
        "steel": <thermalfoundation:material:160>,
        "electrum": <thermalfoundation:material:161>,
        "invar": <thermalfoundation:material:162>,
        "bronze": <thermalfoundation:material:163>,
        "constantan": <thermalfoundation:material:164>,
        "signalum": <thermalfoundation:material:165>,
        "lumium": <thermalfoundation:material:166>,
        "enderium": <thermalfoundation:material:167>,
        "zinc": <railcraft:ingot:8>,
        "titanium": <libvulpes:productnugget:7>,
        "titanium aluminide": <advancedrocketry:productnugget:0>,
        "titanium iridium": <advancedrocketry:productnugget:1>,
        "fluxed electrum": <redstonearsenal:material:64>,
    } as IItemStack[string];

    return ingots[name];
}

function poorOre(name as string) as IItemStack {
    var poorOres = {
        "iron": <railcraft:ore_metal_poor:0>,
        "gold": <railcraft:ore_metal_poor:1>,
        "copper": <railcraft:ore_metal_poor:2>,
        "tin": <railcraft:ore_metal_poor:3>,
        "silver": <railcraft:ore_metal_poor:5>,
        "lead": <railcraft:ore_metal_poor:4>,
        "aluminum": null,
        "nickel": <railcraft:ore_metal_poor:6>,
        "platinum": null,
        "iridium": null,
        "mithril": null,
        "steel": null,
        "electrum": null,
        "invar": null,
        "bronze": null,
        "constantan": null,
        "signalum": null,
        "lumium": null,
        "enderium": null,
        "zinc": <railcraft:ore_metal_poor:7>,
        "titanium": null,
        "titanium aluminide": null,
        "titanium iridium": null,
        "fluxed electrum": null,
    } as IItemStack[string];

    return poorOres[name];
}

function all_metals() as string[] {
    return [
        "iron", "gold", "copper", "tin", "silver", "lead", "aluminum", "nickel", "platinum", "iridium", "mithril",
        "steel", "electrum", "invar", "bronze", "constantan", "signalum", "lumium", "enderium", "zinc", "titanium",
        "titanium aluminide", "titanium iridium", "fluxed electrum",
    ];
}

var bushing = <railcraft:gear:3>;
recipes.remove(bushing);
recipes.addShaped(bushing * 4, [
    [<ore:ingotBrass>, <ore:ingotBrass>],
    [<ore:ingotBrass>, <ore:ingotBrass>],
]);

for metal in all_metals() {
    var dust = dust(metal);
    var gear = gear(metal);
    var ingot = ingot(metal);
    var poorOre = poorOre(metal);

    if (!isNull(gear)) {
        recipes.remove(gear);
        Compactor.addGearRecipe(gear, ingot * 4, 4000);

        recipes.addShaped(gear, [
            [null, ingot, null],
            [ingot, bushing, ingot],
            [null, ingot, null],
        ]);
    }

    if (!isNull(dust) & !isNull(poorOre)) {
        Pulverizer.addRecipe(<minecraft:gravel>, poorOre, 4000, dust, 66);
    }
}
