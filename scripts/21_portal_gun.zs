import mods.jei.JEI;


########################################################################################################################

# Ender Pearl Dust -- remove in preference for the Railcraft version
JEI.removeAndHide(<portalgun:item_dust_ender_pearl>);
furnace.remove(<portalgun:item_dust_ender_pearl>);

# Miniature Black Hole -- replace with more integrated recipe
recipes.remove(<portalgun:item_miniature_black_hole>);
recipes.addShaped(<portalgun:item_miniature_black_hole>, [
    [<railcraft:dust:7>, <railcraft:dust:7>, <railcraft:dust:7>],
    [<railcraft:dust:7>, <ore:gemDilithium>, <railcraft:dust:7>],
    [<railcraft:dust:7>, <railcraft:dust:7>, <railcraft:dust:7>]
]);

# PortalGun -- add more balanced and integrated recipe
recipes.remove(<portalgun:item_portalgun>);
recipes.addShaped(<portalgun:item_portalgun>, [
    [<ore:plateIridium>, <ore:plateIridium>, <ore:plateIridium>],
    [<thermalfoundation:glass:7>, <portalgun:item_miniature_black_hole>, <rftools:infused_enderpearl>],
    [<refinedstorage:core:1>, <advancedrocketry:ic:2>, <refinedstorage:core:0>]
]);
