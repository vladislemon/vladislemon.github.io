val ironTankWall = <Railcraft:machine.beta>;
val ironTankGauge = <Railcraft:machine.beta:1>;
val ironTankValve = <Railcraft:machine.beta:2>;
val steelTankWall = <Railcraft:machine.beta:13>;
val steelTankGauge = <Railcraft:machine.beta:14>;
val steelTankValve = <Railcraft:machine.beta:15>;
val aluminumTankWall = <Railcraft:machine.zeta>;
val aluminumTankGauge = <Railcraft:machine.zeta:1>;
val aluminumTankValve = <Railcraft:machine.zeta:2>;
val iridiumTankWall = <Railcraft:machine.eta>;
val iridiumTankGauge = <Railcraft:machine.eta:1>;
val iridiumTankValve = <Railcraft:machine.eta:2>;

val fluidPipe = <ImmersiveEngineering:metalDevice2:5>;

//recipes.remove(ironTankWall);
//recipes.remove(ironTankGauge);
//recipes.remove(ironTankValve);
recipes.addShaped(ironTankWall, [
    [<ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>]
]);
recipes.addShapeless(ironTankGauge, [ironTankWall, <ore:blockGlass>]);
recipes.addShapeless(ironTankValve, [ironTankWall, fluidPipe]);

//recipes.remove(steelTankWall);
//recipes.remove(steelTankGauge);
//recipes.remove(steelTankValve);
recipes.addShaped(steelTankWall, [
    [<ore:plateSteel>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>]
]);
recipes.addShapeless(steelTankGauge, [steelTankWall, <ore:blockGlass>]);
recipes.addShapeless(steelTankValve, [steelTankWall, fluidPipe]);

//recipes.remove(aluminumTankWall);
//recipes.remove(aluminumTankGauge);
//recipes.remove(aluminumTankValve);
recipes.addShaped(aluminumTankWall, [
    [<ore:plateAluminum>, <ore:plateAluminum>],
    [<ore:plateAluminum>, <ore:plateAluminum>]
]);
recipes.addShapeless(aluminumTankGauge, [aluminumTankWall, <ore:blockGlass>]);
recipes.addShapeless(aluminumTankValve, [aluminumTankWall, fluidPipe]);

//recipes.remove(iridiumTankWall);
//recipes.remove(iridiumTankGauge);
//recipes.remove(iridiumTankValve);
recipes.addShaped(iridiumTankWall, [
    [<ore:plateIridium>, <ore:plateIridium>],
    [<ore:plateIridium>, <ore:plateIridium>]
]);
recipes.addShapeless(iridiumTankGauge, [iridiumTankWall, <ore:blockGlass>]);
recipes.addShapeless(iridiumTankValve, [iridiumTankWall, fluidPipe]);
