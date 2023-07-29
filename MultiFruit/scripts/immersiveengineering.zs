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
