val rodMold = <ImmersiveEngineering:mold:2>;
val ironRod = <ImmersiveEngineering:material:14>;
val ironStickMagnetic = <Magneticraft:item.stick_iron>;
val steelRod = <ImmersiveEngineering:material:14>;
val aluminumRod = <ImmersiveEngineering:material:14>;

recipes.addShaped(rodMold,
	[[null,             <ore:plateSteel>, null],
	 [<ore:plateSteel>, <ore:rodStone>,   <ore:plateSteel>],
	 [null,             <ore:plateSteel>, null]]);

//recipes.remove(ironRod);
recipes.remove(ironStickMagnetic);
mods.immersiveengineering.MetalPress.removeRecipe(ironStickMagnetic);
//recipes.remove(steelRod);
//recipes.remove(aluminumRod);
