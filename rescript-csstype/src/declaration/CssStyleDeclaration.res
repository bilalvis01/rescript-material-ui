let make = declaration => {
  switch declaration {
  | #...CssType.declaration as d => 
    CssDeclaration.make(d)
    ->CssDeclaration.toStyleDeclaration
  | #...CssType.declarationFn as d => 
    CssDeclarationFn.make(d)
    ->CssDeclarationFn.toStyleDeclaration
  | #...CssType.rule as r => 
    CssRule.make(r)
    ->CssRule.toStyleDeclaration
  | #...CssType.pseudoClass as r => 
    CssPseudoClass.make(r)
    ->CssPseudoClass.toStyleDeclaration
  | #...CssType.nestedAtRule as r =>
    CssNestedAtRule.make(r)
    ->CssNestedAtRule.toStyleDeclaration
  };
};