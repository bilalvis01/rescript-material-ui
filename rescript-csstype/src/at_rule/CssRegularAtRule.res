let make = v => {
  switch v {
  | #RegularAtRule(identifier, rule) => (identifier, rule)
  };
};

external toStyleDeclaration: CssType.regularAtRule => CssType.styleDeclaration<'data> = "%identity";
external toRuleSet: CssType.regularAtRule => CssType.styleRule<'data> = "%identity";

module Helper = {
  let regularAtRule = (identifier, rule) => #RegularAtRule(identifier, rule);
};