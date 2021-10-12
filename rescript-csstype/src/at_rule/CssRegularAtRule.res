let make = v => {
  switch v {
  | #RegularAtRule(identifier, rule) => (identifier, rule)
  };
};

external toStyleDeclaration: CssType.regularAtRuleEntry => CssType.styleDeclarationEntry<'data> = "%identity";
external toRuleSet: CssType.regularAtRuleEntry => CssType.styleRuleEntry<'data> = "%identity";

module Helper = {
  let regularAtRule = (identifier, rule) => #RegularAtRule(identifier, rule);
};