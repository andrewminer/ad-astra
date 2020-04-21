# RangedPump -- replace recipe with more compatible one
recipes.remove(<rangedpumps:pump>);
recipes.addShaped(<rangedpumps:pump>, [
    [null, <vehicle:electric_engine>, null],
    [<libvulpes:battery:1>, <railcraft:tank_iron_wall>, <railcraft:tank_iron_valve>],
    [null, <better_diving:fiber_mesh>, null],
]);
