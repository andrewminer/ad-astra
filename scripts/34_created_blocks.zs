#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var lawnBlock = VanillaFactory.createBlock("lawn", <blockmaterial:grass>);
lawnBlock.setBlockHardness(0.6);
lawnBlock.setBlockResistance(0.6);
lawnBlock.setBlockSoundType(<soundtype:ground>);
lawnBlock.setEntitySpawnable(false);
lawnBlock.setToolClass("shovel");
lawnBlock.setToolLevel(0);
lawnBlock.register();
