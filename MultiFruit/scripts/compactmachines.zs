val itemShrinkingModule = <CompactMachines:shrinker>;
val itemEnlargingModule = <CompactMachines:enlarger>;
val worldResizingInterface = <CompactMachines:interfaceitem>;
val worldResizingCube = <CompactMachines:resizingcube>;

val annihilationCore = <appliedenergistics2:item.ItemMultiMaterial:44>;
val formationCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
val singularity = <appliedenergistics2:item.ItemMultiMaterial:47>;

recipes.remove(itemShrinkingModule);
recipes.addShaped(itemShrinkingModule, [
    [null, <ore:ingotElectrum>, null],
    [<ore:craftingPiston>, annihilationCore, <ore:craftingPiston>],
    [null, <ore:ingotElectrum>, null]
]);

recipes.remove(itemEnlargingModule);
recipes.addShaped(itemEnlargingModule, [
    [null, <ore:ingotElectrum>, null],
    [<ore:craftingPiston>, formationCore, <ore:craftingPiston>],
    [null, <ore:ingotElectrum>, null]
]);

recipes.remove(worldResizingInterface);
recipes.addShaped(worldResizingInterface, [
    [<ore:plateSteel>, itemShrinkingModule, <ore:plateSteel>],
    [<ore:plateSteel>, null, <ore:plateSteel>],
    [<ore:plateSteel>, itemEnlargingModule, <ore:plateSteel>]
]);

recipes.remove(worldResizingCube);
recipes.addShaped(worldResizingCube, [
    [worldResizingInterface, worldResizingInterface, null],
    [worldResizingInterface, singularity, worldResizingInterface],
    [null, worldResizingInterface, worldResizingInterface]
]);
