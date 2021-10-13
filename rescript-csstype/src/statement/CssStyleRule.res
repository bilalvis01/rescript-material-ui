let make = statement => {
  switch statement {
  | #...CssType.Syntax.rule as r => CssRule.make(r)
  | #...CssType.Syntax.regularAtRule as r => 
    CssRegularAtRule.make(r)
    ->CssRegularAtRule.toRuleSet
  | #...CssType.Syntax.nestedAtRule as r => 
    CssNestedAtRule.make(r)
    ->CssNestedAtRule.toRuleSet
  }
};