let make = statement => {
  switch statement {
  | #...CssType.rule as r => CssRule.make(r)
  | #...CssType.regularAtRule as r => 
    CssRegularAtRule.make(r)
    ->CssRegularAtRule.toRuleSet
  | #...CssType.nestedAtRule as r => 
    CssNestedAtRule.make(r)
    ->CssNestedAtRule.toRuleSet
  }
};