val redIronCompound = <ProjRed|Core:projectred.core.part:40>;
val electrotineIronCompound = <ProjRed|Core:projectred.core.part:57>;
val redAlloyIngot = <ProjRed|Core:projectred.core.part:10>;
val electrotineAlloyIngot = <ProjRed|Core:projectred.core.part:55>;

recipes.remove(redIronCompound);
recipes.remove(electrotineIronCompound);
furnace.remove(redAlloyIngot);
furnace.remove(electrotineAlloyIngot);
mods.immersiveengineering.ArcFurnace.addRecipe(electrotineAlloyIngot, <ore:ingotSilver>, null, 100, 512, [<ore:dustElectrotine>, <ore:dustElectrotine>, <ore:dustElectrotine>, <ore:dustElectrotine>]);
mods.immersiveengineering.ArcFurnace.addRecipe(electrotineAlloyIngot, <ore:dustSilver>, null, 100, 512, [<ore:dustElectrotine>, <ore:dustElectrotine>, <ore:dustElectrotine>, <ore:dustElectrotine>]);