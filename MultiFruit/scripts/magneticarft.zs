val machineHousing = <Magneticraft:machine_housing>;
val carbideIngot = <Magneticraft:item.ingotCarbide>;
val carbideBlock = <Magneticraft:block_carbide>;
val slag = <ImmersiveEngineering:material:13>;
val drill = <Magneticraft:item.drill>;
val pumpjack = <Magneticraft:pumpjack_1>;
val steelScaffolding = <ImmersiveEngineering:metalDecoration:1>;
val heavyEngineeringBlock = <ImmersiveEngineering:metalDecoration:5>;
val motor = <Magneticraft:item.motor>;
val copperCable = <IC2:itemCable:1>;
val copperCoil = <Magneticraft:item.copper_coil>;
val heavyCopperCoil = <Magneticraft:item.heavy_copper_coil>;
val solarPanel = <Magneticraft:solarpanel>;
val photoelectricDust = <Magneticraft:item.photoelectric_dust>;

recipes.remove(machineHousing);
recipes.addShaped(machineHousing,
	[[<ore:plateSteel>,   <ore:ingotCarbide>, <ore:plateSteel>],
	 [<ore:ingotCarbide>, null,               <ore:ingotCarbide>],
	 [<ore:plateSteel>,   <ore:ingotCarbide>, <ore:plateSteel>]]);

recipes.remove(drill);
recipes.addShaped(drill,
	[[<ore:ingotSteel>],
	 [<ore:ingotSteel>],
	 [<ore:dustDiamond>]]);

recipes.remove(pumpjack);
recipes.addShaped(pumpjack,
	[[steelScaffolding, steelScaffolding,      steelScaffolding],
	 [null,             steelScaffolding,      null],
	 [motor,            heavyEngineeringBlock, drill]]);

recipes.remove(carbideIngot);
recipes.addShapeless(carbideIngot * 9, [<ore:blockCarbide>]);
mods.immersiveengineering.BlastFurnace.addRecipe(carbideIngot, <ore:ingotTungsten>, 1800, slag);
mods.immersiveengineering.BlastFurnace.addRecipe(carbideBlock, <ore:blockTungsten>, 16200, slag * 9);
mods.immersiveengineering.ArcFurnace.addRecipe(carbideIngot, <ore:ingotTungsten>, slag, 600, 512, [<ore:dustCoke>]);
mods.immersiveengineering.ArcFurnace.addRecipe(carbideIngot, <ore:dustTungsten>, slag, 600, 512, [<ore:dustCoke>]);
mods.ic2.BlastFurnace.addRecipe(carbideIngot, <ore:ingotTungsten>);
mods.ic2.BlastFurnace.addRecipe(carbideIngot, <ore:dustTungsten>);
mods.ic2.BlastFurnace.addRecipe(carbideIngot, <ore:oreTungsten>);
mods.ic2.BlastFurnace.addRecipe(carbideIngot, <ore:crushedPurifiedTungsten>);
mods.ic2.BlastFurnace.addRecipe(carbideIngot, <ore:crushedTungsten>);

recipes.remove(copperCoil);
recipes.addShaped(copperCoil * 4,
	[[copperCable, copperCable, copperCable],
	 [copperCable, null,        copperCable],
	 [copperCable, copperCable, copperCable]]);

recipes.remove(heavyCopperCoil);
recipes.addShaped(heavyCopperCoil,
	[[<ore:slabWood>],
	 [<ore:stickWood>, copperCoil],
	 [<ore:slabWood>]]);

recipes.remove(solarPanel);
recipes.addShaped(solarPanel,
	[[<ore:dustQuartz>,   <ore:dustQuartz>,   <ore:dustQuartz>],
	 [photoelectricDust,  <ore:itemSilicon>,  photoelectricDust],
	 [<ore:sheetPlastic>, <ore:sheetPlastic>, <ore:sheetPlastic>]]);
