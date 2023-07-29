val stickyResin = <IC2:itemHarz>;
val rubber = <Magneticraft:item.rubber>;
val rubberOredict = <ore:itemRubber>;
val sulfur = <ThermalFoundation:material:16>;
val rawPlastic = <MineFactoryReloaded:plastic.raw>;
val coal = <minecraft:coal>;
val naturalGas = <liquid:naturalgas>;
val obsidianDust = <ThermalFoundation:material:4>;
val silicon = <EnderIO:itemMaterial>;
val slag = <ImmersiveEngineering:material:13>;

// rubber
mods.thermalexpansion.Furnace.removeRecipe(rubberOredict);
mods.thermalexpansion.Smelter.addRecipe(1000, stickyResin * 2, sulfur, rubber * 4, rubber, 45);

// plastic
furnace.remove(rawPlastic, rubberOredict);
mods.magneticraft.Polymerizer.removeRecipe(coal);
mods.magneticraft.Polymerizer.addRecipe(naturalGas * 500, coal, rawPlastic, 300);

//obsidian
mods.ic2.Macerator.addRecipe(obsidianDust * 4, <ore:blockObsidian>);
mods.appeng.Grinder.removeRecipe(obsidianDust);
mods.appeng.Grinder.addRecipe([obsidianDust * 2, obsidianDust % 50], <minecraft:obsidian>, 8);
mods.magneticraft.Grinder.removeRecipe(<minecraft:obsidian>);
mods.magneticraft.Grinder.addRecipe(<minecraft:obsidian>, obsidianDust * 4, null, 0, null, 0);

// silicon
mods.thermalexpansion.Pulverizer.removeRecipe(<ore:sand>);
mods.immersiveengineering.ArcFurnace.addRecipe(silicon, <ore:sand>, slag, 100, 512, []);
