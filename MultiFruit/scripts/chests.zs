val ironChest = <IronChest:BlockIronChest>;
val goldChest = <IronChest:BlockIronChest:1>;
val diamondChest = <IronChest:BlockIronChest:2>;
val copperChest = <IronChest:BlockIronChest:3>;
val steelChest = <IronChest:BlockIronChest:4>;
val crystalChest = <IronChest:BlockIronChest:5>;
val obsidianChest = <IronChest:BlockIronChest:6>;
val dirtChest = <IronChest:BlockIronChest:7>;
val etherealGlass = <ExtraUtilities:etherealglass>;

recipes.addShaped(ironChest,
  [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
  [ <ore:plateIron>, null,            <ore:plateIron>],
  [ <ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

recipes.addShaped(goldChest,
  [[<ore:plateGold>, <ore:plateGold>, <ore:plateGold>],
  [ <ore:plateGold>, null,            <ore:plateGold>],
  [ <ore:plateGold>, <ore:plateGold>, <ore:plateGold>]]);

recipes.addShaped(diamondChest,
  [[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
  [ <ore:gemDiamond>, null,             <ore:gemDiamond>],
  [ <ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]]);

recipes.addShaped(copperChest,
  [[<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>],
  [ <ore:plateCopper>, null,              <ore:plateCopper>],
  [ <ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>]]);

recipes.addShaped(steelChest,
  [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
  [ <ore:plateSteel>, null,             <ore:plateSteel>],
  [ <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.addShaped(crystalChest,
  [[etherealGlass, etherealGlass, etherealGlass],
  [ etherealGlass, diamondChest,  etherealGlass],
  [ etherealGlass, etherealGlass, etherealGlass]]);

recipes.addShaped(obsidianChest,
  [[<ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>],
  [ <ore:plateObsidian>, diamondChest,        <ore:plateObsidian>],
  [ <ore:plateObsidian>, <ore:plateObsidian>, <ore:plateObsidian>]]);

recipes.addShaped(dirtChest,
  [[<ore:dirt>, <ore:dirt>, <ore:dirt>],
  [ <ore:dirt>, null,       <ore:dirt>],
  [ <ore:dirt>, <ore:dirt>, <ore:dirt>]]);
