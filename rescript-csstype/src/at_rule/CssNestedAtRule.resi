let make: CssType.Syntax.nestedAtRule => CssType.nestedAtRule;

external toStyleDeclaration: CssType.nestedAtRule => CssType.styleDeclaration<'data> = "%identity";
external toRuleSet: CssType.nestedAtRule => CssType.styleRule<'data> = "%identity";

module Helper: {
  let nestedAtRule: (string, option<string>, CssType.descriptorBlock<'a>) => CssType.Syntax.nar<'b>;
};