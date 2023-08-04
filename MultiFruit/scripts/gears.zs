val woodenGearItem = <BuildCraft|Core:woodenGearItem>;
val stoneGearItem = <BuildCraft|Core:stoneGearItem>;
val ironGearItem = <BuildCraft|Core:ironGearItem>;
val goldGearItem = <BuildCraft|Core:goldGearItem>;
val diamondGearItem = <BuildCraft|Core:diamondGearItem>;
val basicGearItem = <EnderIO:itemMachinePart:1>;
val compressedIronGearItem = <PneumaticCraft:compressedIronGear>;
val ironGearItemBC = <BuildCraft|Core:ironGearItem>;
val ironGearItemTE = <ThermalFoundation:material:12>;
val copperGearItem = <ThermalFoundation:material:128>;
val tinGearItem = <ThermalFoundation:material:129>;
val silverGearItem = <ThermalFoundation:material:130>;
val leadGearItem = <ThermalFoundation:material:131>;
val nickelGearItem = <ThermalFoundation:material:132>;
val platinumGearItem = <ThermalFoundation:material:133>;
val manaInfusedGearItem = <ThermalFoundation:material:134>;
val electrumGearItem = <ThermalFoundation:material:135>;
val invarGearItem = <ThermalFoundation:material:136>;
val bronzeGearItem = <ThermalFoundation:material:137>;
val signalumGearItem = <ThermalFoundation:material:138>;
val lumiumGearItem = <ThermalFoundation:material:139>;
val enderiumGearItem = <ThermalFoundation:material:140>;
val gearMold = <ImmersiveEngineering:mold:1>;
val yetaWrench = <EnderIO:itemYetaWrench>;
val conductiveIronThruster = <simplyjetpacks:components:21>;
val redstoneConduit = <EnderIO:itemRedstoneConduit>;

recipes.remove(woodenGearItem);
recipes.remove(stoneGearItem);
recipes.remove(ironGearItem);
recipes.remove(goldGearItem);
recipes.remove(diamondGearItem);
recipes.remove(basicGearItem);
recipes.remove(compressedIronGearItem);
recipes.remove(copperGearItem);
recipes.remove(tinGearItem);
recipes.remove(silverGearItem);
recipes.remove(leadGearItem);
recipes.remove(nickelGearItem);
recipes.remove(platinumGearItem);
recipes.remove(manaInfusedGearItem);
recipes.remove(electrumGearItem);
recipes.remove(invarGearItem);
recipes.remove(bronzeGearItem);
recipes.remove(signalumGearItem);
recipes.remove(lumiumGearItem);
recipes.remove(enderiumGearItem);

recipes.addShaped(woodenGearItem,
	[[null,            <ore:plankWood>, null],
	 [<ore:plankWood>, null,            <ore:plankWood>],
	 [null,            <ore:plankWood>, null]]);

recipes.addShaped(stoneGearItem,
	[[null,        <ore:stone>, null],
	 [<ore:stone>, null,        <ore:stone>],
	 [null,        <ore:stone>, null]]);

//mods.immersiveengineering.MetalPress.removeRecipe(ironGearItemTE);
mods.immersiveengineering.MetalPress.addRecipe(diamondGearItem, <ore:dustDiamond>, gearMold, 2400, 4);

// replace basic gear with iron
<ore:itemBasicGear>.add(ironGearItem);

recipes.remove(yetaWrench);
recipes.addShaped(yetaWrench,
	[[<ore:ingotElectricalSteel>, null,                       <ore:ingotElectricalSteel>],
	 [null,                       <ore:gearIron>,             null],
	 [null,                       <ore:ingotElectricalSteel>, null]]);

recipes.remove(conductiveIronThruster);
recipes.addShaped(conductiveIronThruster,
	[[<ore:ingotConductiveIron>, <ore:capacitorBasic>, <ore:ingotConductiveIron>],
	 [redstoneConduit,           <ore:capacitorBasic>, redstoneConduit],
	 [<ore:gearIron>,            <ore:dustRedstone>,   <ore:gearIron>]]);

recipes.addShaped(gearMold,
	[[null,             <ore:plateSteel>, null],
	 [<ore:plateSteel>, stoneGearItem,    <ore:plateSteel>],
	 [null,             <ore:plateSteel>, null]]);
