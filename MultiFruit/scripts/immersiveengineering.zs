val ironMechanicalComponent = <ImmersiveEngineering:material:11>;
val steelMechanicalComponent = <ImmersiveEngineering:material:12>;
val graphiteElectrode = <ImmersiveEngineering:graphiteElectrode>;

recipes.remove(ironMechanicalComponent);
recipes.addShaped(ironMechanicalComponent,
	[[<ore:plateIron>, null,            <ore:plateIron>],
	 [null,            <ore:stickIron>, null],
	 [<ore:plateIron>, null,            <ore:plateIron>]]);

recipes.remove(steelMechanicalComponent);
recipes.addShaped(steelMechanicalComponent,
	[[<ore:plateSteel>, null,             <ore:plateSteel>],
	 [null,             <ore:stickSteel>, null],
	 [<ore:plateSteel>, null,             <ore:plateSteel>]]);

mods.immersiveengineering.MetalPress.addRecipe(graphiteElectrode, <ore:ingotHOPGraphite>, <ImmersiveEngineering:mold:2>, 500, 4);

//treated wood
mods.thermalexpansion.Transposer.addFillRecipe(500, <minecraft:planks:*>, <ImmersiveEngineering:treatedWood>, <liquid:creosote> * 125);
mods.thermalexpansion.Transposer.addFillRecipe(500, <ExtraUtilities:colorWoodPlanks:*>, <ImmersiveEngineering:treatedWood>, <liquid:creosote> * 125);
mods.thermalexpansion.Transposer.addFillRecipe(2000, <minecraft:log:*>, <Railcraft:cube:8>, <liquid:creosote> * 125);
mods.thermalexpansion.Transposer.addFillRecipe(2000, <minecraft:log2:*>, <Railcraft:cube:8>, <liquid:creosote> * 1000);
mods.thermalexpansion.Transposer.addFillRecipe(1000, <minecraft:wooden_slab:*> * 3, <Railcraft:part.tie:1>, <liquid:creosote> * 1000);

//steel fence
mods.ic2.MetalFormer.addExtrudingRecipe(<ImmersiveEngineering:metalDecoration>, <IC2:itemCasing:5>);
