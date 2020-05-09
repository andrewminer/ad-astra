import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.CompressionDynamo;
import mods.thermalexpansion.Refinery;
import mods.thermalexpansion.Pulverizer;

# Fuelium -- create fuelium from Thermal Foundation refined fuels
Refinery.addRecipe(<liquid:fuelium> * 100, null, <liquid:refined_fuel> * 100, 1000);
Refinery.addRecipe(<liquid:fuelium> * 55, null, <liquid:refined_biofuel> * 100, 1000);

# Fuelium -- allow use in Compression Dynamo
CompressionDynamo.addFuel(<liquid:fuelium> * 1000, 1501000);

# Gold Nugget -- turn gold coins back into nuggets
Pulverizer.addRecipe(<minecraft:gold_nugget> * 2, <thermalfoundation:coin:1>, 1500, <minecraft:gold_nugget>, 50);

# Silver Nugget -- turn silver coins back into nuggets
Pulverizer.addRecipe(<railcraft:nugget:4> * 2, <thermalfoundation:coin:66>, 1500, <railcraft:nugget:4>, 50);

# Copper Nugget -- turn copper coins back into nuggets
Pulverizer.addRecipe(<railcraft:nugget:1> * 2, <thermalfoundation:coin:64>, 1500, <railcraft:nugget:1>, 50);

# Iron Nugget -- turn oxidized sand into iron nuggets and sand
Centrifuge.addRecipe(
    [<minecraft:iron_nugget> % 10, <minecraft:sand>],
    <advancedrocketry:hotturf>,
    <liquid:water>,
    2000
);
