let make: CssType.Syntax.regularAtRule => CssType.regularAtRule;

external toStyleDeclaration: CssType.regularAtRule => CssType.styleDeclaration<'data> = "%identity";
external toRuleSet: CssType.regularAtRule => CssType.styleRule<'data> = "%identity";

module Helper: {
  let regularAtRule: (string, string) => CssType.Syntax.rar<'a>;
};