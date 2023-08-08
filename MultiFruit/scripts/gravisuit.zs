// --- I18N ---
val _I18N_Lang = "en_US";
val I18N_GraviSuite_0 = "Superconductor Cover";
val I18N_GraviSuite_1 = "Superconductor";
val I18N_GraviSuite_2 = "Cooling Core";
val I18N_GraviSuite_3 = "Gravitation Engine";
val I18N_GraviSuite_4 = "Magnetron";
val I18N_GraviSuite_5 = "Vajra Core";
val I18N_GraviSuite_6 = "Engine Booster";

// --- Nei Change Names ---

// --- SuperConductorCover
<GraviSuite:itemSimpleItem>.displayName = I18N_GraviSuite_0;

// --- SuperConductor
<GraviSuite:itemSimpleItem:1>.displayName = I18N_GraviSuite_1;

// --- Cooling Core
<GraviSuite:itemSimpleItem:2>.displayName = I18N_GraviSuite_2;

// --- Gravitation Engine
<GraviSuite:itemSimpleItem:3>.displayName = I18N_GraviSuite_3;

// --- Magnetron
<GraviSuite:itemSimpleItem:4>.displayName = I18N_GraviSuite_4;

// --- VajraCore
<GraviSuite:itemSimpleItem:5>.displayName = I18N_GraviSuite_5;

// --- EngineBoost
<GraviSuite:itemSimpleItem:6>.displayName = I18N_GraviSuite_6;



// --- Engine Boost
recipes.remove(<GraviSuite:itemSimpleItem:6>);
recipes.addShaped(<GraviSuite:itemSimpleItem:6>, [
[<ore:dustGlowstone>, <IC2:itemPartAlloy>, <ore:dustGlowstone>],
[<ore:circuitAdvanced>, <IC2:upgradeModule>, <ore:circuitAdvanced>],
[<IC2:itemPartAlloy>, <IC2:reactorVentDiamond:1>, <IC2:itemPartAlloy>]]);
