val irradiantGlassPane = <AdvancedSolarPanel:asp_crafting_items:5>;
val thickNeutronReflector = <IC2:reactorReflectorThick>;
val mtCore = <AdvancedSolarPanel:asp_crafting_items:12>;

recipes.remove(mtCore);
recipes.addShaped(mtCore,
	[[irradiantGlassPane, thickNeutronReflector.anyDamage().onlyDamageAtMost(1), irradiantGlassPane],
	 [irradiantGlassPane, null, irradiantGlassPane],
	 [irradiantGlassPane, thickNeutronReflector.anyDamage().onlyDamageAtMost(1), irradiantGlassPane]]);
