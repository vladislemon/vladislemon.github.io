val ironCasing = <quantumflux:ironCasing>;
val quibitCrystal = <quantumflux:quibitCrystal>;

recipes.remove(ironCasing);
recipes.addShaped(ironCasing,
	[[null,            <ore:gemLapis>,  null],
	 [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

recipes.remove(quibitCrystal);
recipes.addShaped(quibitCrystal,
	[[null,              <ore:dustRedstone>,               null],
	 [<ore:itemSilicon>, <ore:crystalChargedCertusQuartz>, <ore:itemSilicon>],
         [null,              <ore:dustRedstone>,               null]]);
