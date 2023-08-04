val machineFrame = <rftools:machineFrame>;
val machineBase = <rftools:machineBase>;
val dimensionBuilder = <rftools:dimensionBuilderBlock>;
val builder = <rftools:builderBlock>;
val energyExtractor = <rftools:energyExtractorBlock>;
val matterTransmitter = <rftools:matterTransmitterBlock>;
val matterReceiver = <rftools:matterReceiverBlock>;
val shieldProjector1 = <rftools:shieldBlock>;

val singularity = <appliedenergistics2:item.ItemMultiMaterial:47>;
val carbonPlate = <IC2:itemPartCarbonPlate>;
val dimensionalShard = <rftools:dimensionalShardItem>;
val formationCore = <appliedenergistics2:item.ItemMultiMaterial:43>;
val annihilationCore = <appliedenergistics2:item.ItemMultiMaterial:44>;

recipes.remove(machineFrame);
recipes.addShaped(machineFrame,
	[[<ore:plateSteel>,   <ore:gemLapis>, <ore:plateSteel>],
	 [<ore:sheetPlastic>, null,           <ore:sheetPlastic>],
     [<ore:plateSteel>,   <ore:gemLapis>, <ore:plateSteel>]]);

recipes.remove(machineBase);
recipes.addShaped(machineBase,
	[[null,             <ore:sheetPlastic>, null],
	 [<ore:plateSteel>, <ore:plateSteel>,   <ore:plateSteel>]]);

recipes.remove(dimensionBuilder);
recipes.addShaped(dimensionBuilder,
	[[singularity,              <ore:itemNetherStar>, singularity],
	 [<ore:itemSuperconductor>, machineFrame,         <ore:itemSuperconductor>],
     [carbonPlate,              carbonPlate,          carbonPlate]]);

recipes.remove(builder);
recipes.addShaped(builder,
	[[<ore:chipsetPulsating>,   <ore:chipsetPulsating>, <ore:chipsetPulsating>],
	 [<ore:itemSuperconductor>, machineFrame,           <ore:itemSuperconductor>],
     [carbonPlate,              carbonPlate,            carbonPlate]]);

recipes.remove(energyExtractor);
recipes.addShaped(energyExtractor,
	[[dimensionalShard,         dimensionalShard, dimensionalShard],
	 [<ore:itemSuperconductor>, machineFrame,     <ore:itemSuperconductor>],
     [carbonPlate,              carbonPlate,      carbonPlate]]);

recipes.remove(matterTransmitter);
recipes.addShaped(matterTransmitter,
	[[<ore:pearlEnder>,         <ore:pearlEnder>, <ore:pearlEnder>],
	 [<ore:itemSuperconductor>, machineFrame,     <ore:itemSuperconductor>],
     [carbonPlate,              carbonPlate,      carbonPlate]]);
recipes.addShapeless(matterTransmitter, [matterReceiver]);

recipes.remove(matterReceiver);
recipes.addShapeless(matterReceiver, [matterTransmitter]);

recipes.remove(shieldProjector1);
recipes.addShaped(shieldProjector1,
	[[formationCore,         singularity,  annihilationCore],
	 [<ore:circuitAdvanced>, machineFrame, <ore:circuitAdvanced>],
     [carbonPlate,           carbonPlate,  carbonPlate]]);
recipes.addShapeless(matterTransmitter, [matterReceiver]);
