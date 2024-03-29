val circuit = <IC2:itemPartCircuit>;
val copperCable = <IC2:itemCable:1>;
val machineCasing = <IC2:blockMachine>;
val miningDrill = <IC2:itemToolDrill>;
val diamondDrill = <IC2:itemToolDDrill>;
val miningLaser = <IC2:itemToolMiningLaser>;
val coil = <IC2:itemRecipePart>;
val copperCoil = <Magneticraft:item.copper_coil>;
val energyCrystal = <IC2:itemBatCrystal>;
val advancedAlloy = <IC2:itemPartAlloy>;
val glassFibreCable = <IC2:itemCable:9>;
val reinforcedFoam = <IC2:blockReinforcedFoam>;
val reinforcedStone = <IC2:blockAlloy>;
val ironScaffold = <IC2:blockIronScaffold>;
val sandBlock = <minecraft:sand>;

recipes.remove(circuit);
recipes.addShaped(circuit,
	[[copperCable,        copperCable,       copperCable],
	 [<ore:sheetPlastic>, <ore:chipsetIron>, <ore:sheetPlastic>],
	 [copperCable,        copperCable,       copperCable]]);

recipes.remove(machineCasing);
recipes.addShaped(machineCasing,
	[[<ore:plateSteel>,   <ore:plateSteel>, <ore:plateSteel>],
	 [<ore:sheetPlastic>, null,             <ore:sheetPlastic>],
	 [<ore:plateSteel>,   <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(coil);
recipes.addShaped(coil,
	[[null,       copperCoil,    null],
	 [copperCoil, <ore:stickIron>, copperCoil],
	 [null,       copperCoil,    null]]);

recipes.remove(diamondDrill);
recipes.addShaped(diamondDrill,
	[[null,              <ore:dustDiamond>, null],
	 [<ore:dustDiamond>, miningDrill.anyDamage(),       <ore:dustDiamond>]]);

recipes.remove(miningLaser);
recipes.addShaped(miningLaser,
	[[glassFibreCable, glassFibreCable, energyCrystal.anyDamage()],
	 [advancedAlloy,   advancedAlloy,   <ore:circuitAdvanced>],
	 [null,            <ore:stickIron>, advancedAlloy]]);

vanilla.loot.removeChestLoot("dungeonChest", <IC2:itemOreIridium>);
vanilla.loot.removeChestLoot("strongholdCorridor", <IC2:itemOreIridium>);
vanilla.loot.removeChestLoot("strongholdCrossing", <IC2:itemOreIridium>);

vanilla.loot.removeChestLoot("dungeonChest", <IC2:itemShardIridium>);
vanilla.loot.removeChestLoot("mineshaftCorridor", <IC2:itemShardIridium>);
vanilla.loot.removeChestLoot("strongholdCorridor", <IC2:itemShardIridium>);
vanilla.loot.removeChestLoot("strongholdCrossing", <IC2:itemShardIridium>);
vanilla.loot.removeChestLoot("villageBlacksmith", <IC2:itemShardIridium>);

//reinforced stone
mods.thermalexpansion.Transposer.addFillRecipe(1000, ironScaffold, reinforcedFoam, <liquid:ic2constructionfoam> * 100);
mods.thermalexpansion.Smelter.addRecipe(2500, reinforcedFoam, sandBlock, reinforcedStone);
