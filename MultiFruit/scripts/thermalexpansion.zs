val basicMachineFrame = <ThermalExpansion:Frame>;
val redstoneReceptionCoil = <ThermalExpansion:material:1>;
val redstoneTransmissionCoil = <ThermalExpansion:material:2>;
val redstoneConductanceCoil = <ThermalExpansion:material:3>;

recipes.remove(basicMachineFrame);
recipes.addShaped(basicMachineFrame,
	[[<ore:plateSteel>,   <ore:sheetPlastic>, <ore:plateSteel>],
	 [<ore:sheetPlastic>, <ore:gearTin>,      <ore:sheetPlastic>],
	 [<ore:plateSteel>,   <ore:sheetPlastic>, <ore:plateSteel>]]);

recipes.remove(redstoneReceptionCoil);
recipes.addShaped(redstoneReceptionCoil,
	[[null,               <ore:nuggetGold>,  <ore:dustRedstone>],
	 [<ore:nuggetGold>,   <ore:itemSilicon>, <ore:nuggetGold>],
	 [<ore:dustRedstone>, <ore:nuggetGold>,  null]]);

recipes.remove(redstoneTransmissionCoil);
recipes.addShaped(redstoneTransmissionCoil,
	[[null,               <ore:nuggetSilver>, <ore:dustRedstone>],
	 [<ore:nuggetSilver>, <ore:itemSilicon>,  <ore:nuggetSilver>],
	 [<ore:dustRedstone>, <ore:nuggetSilver>, null]]);

recipes.remove(redstoneConductanceCoil);
recipes.addShaped(redstoneConductanceCoil,
	[[<ore:dustRedstone>,   <ore:nuggetElectrum>, null],
	 [<ore:nuggetElectrum>, <ore:itemSilicon>,    <ore:nuggetElectrum>],
	 [null,                 <ore:nuggetElectrum>, <ore:dustRedstone>]]);
