val basicCapacitor = <EnderIO:itemBasicCapacitor>;
val silverCapacitor = <EnderIO:itemBasicCapacitor:7>;
val machineChasis = <EnderIO:itemMachinePart>;
val copperCable = <IC2:itemCable:1>;

recipes.remove(basicCapacitor);
recipes.addShaped(basicCapacitor,
	[[null,               <ore:plateGold>,    null],
	 [<ore:sheetPlastic>, <ore:dustRedstone>, <ore:sheetPlastic>],
	 [copperCable,        <ore:plateGold>,    copperCable]]);

recipes.remove(silverCapacitor);
recipes.addShaped(silverCapacitor,
	[[null,               <ore:plateSilver>,  null],
	 [<ore:sheetPlastic>, <ore:dustRedstone>, <ore:sheetPlastic>],
	 [copperCable,        <ore:plateSilver>,  copperCable]]);

recipes.remove(machineChasis);
recipes.addShaped(machineChasis,
	[[<ore:barsIron>,   <ore:plateSteel>,     <ore:barsIron>],
	 [<ore:plateSteel>, <ore:capacitorBasic>, <ore:plateSteel>],
	 [<ore:barsIron>,   <ore:plateSteel>,     <ore:barsIron>]]);
