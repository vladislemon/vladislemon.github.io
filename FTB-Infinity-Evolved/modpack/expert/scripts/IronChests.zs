#Name: IronChests.zs
#Author: Feed the Beast

print("Initializing 'IronChests.zs'...");

#upgrades
recipes.remove(<IronChest:diamondObsidianUpgrade>);
recipes.remove(<IronChest:diamondCrystalUpgrade>);
recipes.remove(<IronChest:goldDiamondUpgrade>);
recipes.remove(<IronChest:steelGoldUpgrade>);
recipes.remove(<IronChest:ironGoldUpgrade>);
recipes.remove(<IronChest:copperSteelUpgrade>);
recipes.remove(<IronChest:copperIronUpgrade>);
recipes.remove(<IronChest:woodIronUpgrade>);
recipes.remove(<IronChest:woodCopperUpgrade>);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:woodIronUpgrade>, 10000, [<ore:plankWood>, <IC2:itemPlates:4> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:woodCopperUpgrade>, 5000, [<ore:plankWood>, <IC2:itemPlates> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:copperIronUpgrade>, 10000, [<IC2:itemPlates>, <IC2:itemPlates:4> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:copperSteelUpgrade>, 20000, [<IC2:itemPlates>, <ImmersiveEngineering:metal:38> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:copperSteelUpgrade>, 20000, [<IC2:itemPlates>, <Railcraft:part.plate:1> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:ironGoldUpgrade>, 40000, [<IC2:itemPlates:4>, <IC2:itemPlates:3> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:steelGoldUpgrade>, 40000, [<ImmersiveEngineering:metal:38>, <IC2:itemPlates:3> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:steelGoldUpgrade>, 40000, [<Railcraft:part.plate:1>, <IC2:itemPlates:3> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:goldDiamondUpgrade>, 80000, [<IC2:itemPlates:3>, <minecraft:diamond> * 2, <minecraft:glass> * 6]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:diamondCrystalUpgrade>, 80000, [<minecraft:diamond>, <minecraft:glass> * 8]);
mods.buildcraft.AssemblyTable.addRecipe(<IronChest:diamondObsidianUpgrade>, 80000, [<minecraft:diamond>, <minecraft:obsidian> * 8]);



#chests
recipes.remove(<IronChest:BlockIronChest>);
recipes.remove(<IronChest:BlockIronChest:1>);
recipes.remove(<IronChest:BlockIronChest:3>);
recipes.remove(<IronChest:BlockIronChest:4>);
recipes.addShaped(<IronChest:BlockIronChest>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <minecraft:chest>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.addShaped(<IronChest:BlockIronChest>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <IronChest:BlockIronChest:3>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);
recipes.addShaped(<IronChest:BlockIronChest:1>, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], [<ore:plateGold>, <IronChest:BlockIronChest>, <ore:plateGold>], [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);
recipes.addShaped(<IronChest:BlockIronChest:1>, [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>], [<ore:plateGold>, <IronChest:BlockIronChest:4>, <ore:plateGold>], [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);
recipes.addShaped(<IronChest:BlockIronChest:3>, [[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], [<ore:plateCopper>, <minecraft:chest>, <ore:plateCopper>], [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]);
recipes.addShaped(<IronChest:BlockIronChest:4>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateSteel>, <IronChest:BlockIronChest>, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
recipes.addShaped(<IronChest:BlockIronChest:4>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateSteel>, <IronChest:BlockIronChest:3>, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

print("Initialized 'IronChests.zs'");