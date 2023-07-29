val hammer = <ImmersiveEngineering:tool>;
val ic2Hammer = <IC2:itemToolForgeHammer>;

val ironPlate = <ImmersiveEngineering:metal:30>;
val copperPlate = <ImmersiveEngineering:metal:31>;
val tinPlate = <IC2:itemPlates:1>;
val bronzePlate = <IC2:itemPlates:2>;
val goldPlate = <IC2:itemPlates:3>;
val leadPlate = <ImmersiveEngineering:metal:33>;
val aluminumPlate = <ImmersiveEngineering:metal:32>;
val silverPlate = <ImmersiveEngineering:metal:34>;
val nickelPlate = <ImmersiveEngineering:metal:35>;
val constantanPlate = <ImmersiveEngineering:metal:36>;
val plasticPlate = <Magneticraft:item.plastic>;
val obsidianPlate = <IC2:itemPlates:7>;
val lapisPlate = <IC2:itemPlates:8>;

val copperCasing = <IC2:itemCasing>;
val tinCasing = <IC2:itemCasing:1>;
val bronzeCasing = <IC2:itemCasing:2>;
val goldCasing = <IC2:itemCasing:3>;
val ironCasing = <IC2:itemCasing:4>;
val steelCasing = <IC2:itemCasing:5>;
val leadCasing = <IC2:itemCasing:6>;

val rawPlastic = <MineFactoryReloaded:plastic.raw>;
val obsidianDust = <ThermalFoundation:material:4>;
val lapisDust = <IC2:itemDust:12>;

//plates by hammer
recipes.removeShapeless(ironPlate,   [<ore:ingotIron>,   ic2Hammer]);
recipes.removeShapeless(copperPlate, [<ore:ingotCopper>, ic2Hammer]);
recipes.removeShapeless(tinPlate,    [<ore:ingotTin>,    ic2Hammer]);
recipes.removeShapeless(bronzePlate, [<ore:ingotBronze>, ic2Hammer]);
recipes.removeShapeless(goldPlate,   [<ore:ingotGold>,   ic2Hammer]);
recipes.removeShapeless(leadPlate,   [<ore:ingotLead>,   ic2Hammer]);

recipes.addShapeless(ironPlate,   [<ore:ingotIron>,   hammer]);
recipes.addShapeless(copperPlate, [<ore:ingotCopper>, hammer]);
recipes.addShapeless(tinPlate,    [<ore:ingotTin>,    hammer]);
recipes.addShapeless(bronzePlate, [<ore:ingotBronze>, hammer]);
recipes.addShapeless(goldPlate,   [<ore:ingotGold>,   hammer]);
recipes.addShapeless(leadPlate,   [<ore:ingotLead>,   hammer]);
recipes.addShapeless(silverPlate, [<ore:ingotSilver>, hammer]);
recipes.addShapeless(nickelPlate, [<ore:ingotNickel>, hammer]);

//plates by metal former
mods.ic2.MetalFormer.addRollingRecipe(leadPlate,       <ore:ingotLead>);
mods.ic2.MetalFormer.addRollingRecipe(aluminumPlate,   <ore:ingotAluminum>);
mods.ic2.MetalFormer.addRollingRecipe(silverPlate,     <ore:ingotSilver>);
mods.ic2.MetalFormer.addRollingRecipe(nickelPlate,     <ore:ingotNickel>);
mods.ic2.MetalFormer.addRollingRecipe(constantanPlate, <ore:ingotConstantan>);

//casings by hammer
recipes.remove(copperCasing);
recipes.remove(tinCasing);
recipes.remove(bronzeCasing);
recipes.remove(goldCasing);
recipes.remove(ironCasing);
recipes.remove(steelCasing);
recipes.remove(leadCasing);
recipes.addShapeless(copperCasing * 2, [<ore:plateCopper>, hammer]);
recipes.addShapeless(tinCasing * 2,    [<ore:plateTin>,    hammer]);
recipes.addShapeless(bronzeCasing * 2, [<ore:plateBronze>, hammer]);
recipes.addShapeless(goldCasing * 2,   [<ore:plateGold>,   hammer]);
recipes.addShapeless(ironCasing * 2,   [<ore:plateIron>,   hammer]);
recipes.addShapeless(steelCasing * 2,  [<ore:plateSteel>,  hammer]);
recipes.addShapeless(leadCasing * 2,   [<ore:plateLead>,   hammer]);

// plastic plate
recipes.removeShaped(plasticPlate);
mods.ic2.Compressor.addRecipe(plasticPlate, rawPlastic);

// non-metal plates by Pressure
mods.pneumaticcraft.Pressure.addRecipe([rawPlastic], 2.0, [plasticPlate], false);
mods.pneumaticcraft.Pressure.addRecipe([obsidianDust], 4.0, [obsidianPlate], false);
mods.pneumaticcraft.Pressure.addRecipe([lapisDust], 3.0, [lapisPlate], false);

//remove IC2 hammer recipe
recipes.remove(ic2Hammer);

//remove IC2 block cutter recipe
recipes.remove(<IC2:blockMachine3:2>);
