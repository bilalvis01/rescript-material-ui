let make: CssType.regularAtRule => CssType.regularAtRuleEntry;

external toStyleDeclaration: CssType.regularAtRuleEntry => CssType.styleDeclarationEntry<'data> = "%identity";
external toRuleSet: CssType.regularAtRuleEntry => CssType.styleRuleEntry<'data> = "%identity";

module Helper: {
  let regularAtRule: (string, string) => CssType.rar<'a>;
};