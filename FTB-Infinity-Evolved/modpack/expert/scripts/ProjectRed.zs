#Name: ProjectRed.zs
#Author: Feed the Beast

print("Initializing 'ProjectRed.zs'...");

furnace.remove(<ProjRed|Core:projectred.core.part>, <minecraft:stone>);
furnace.addRecipe(<ProjRed|Core:projectred.core.part>, <etfuturum:smooth_stone>);

print("Initialized 'ProjectRed.zs'");