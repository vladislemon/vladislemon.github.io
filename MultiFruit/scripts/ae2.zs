val lathingTool = <IC2:itemLathingTool>;
val engineeringPress = <appliedenergistics2:item.ItemMultiMaterial:14>;
val calculationPress = <appliedenergistics2:item.ItemMultiMaterial:13>;
val logicPress = <appliedenergistics2:item.ItemMultiMaterial:15>;
val siliconPress = <appliedenergistics2:item.ItemMultiMaterial:19>;

recipes.addShapeless(engineeringPress, [<ore:blockIron>,  lathingTool.anyDamage().transformDamage()]);
recipes.addShapeless(calculationPress, [engineeringPress, lathingTool.anyDamage().transformDamage()]);
recipes.addShapeless(logicPress,       [calculationPress, lathingTool.anyDamage().transformDamage()]);
recipes.addShapeless(siliconPress,     [logicPress,       lathingTool.anyDamage().transformDamage()]);
