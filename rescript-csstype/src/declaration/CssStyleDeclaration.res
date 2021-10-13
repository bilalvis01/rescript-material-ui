let make = declaration => {
  switch declaration {
  | #...CssType.Syntax.declaration as d => 
    CssDeclaration.make(d)
    ->CssDeclaration.toStyleDeclaration
  | #...CssType.Syntax.declarationFn as d => 
    CssDeclarationFn.make(d)
    ->CssDeclarationFn.toStyleDeclaration
  | #...CssType.Syntax.rule as r => 
    CssRule.make(r)
    ->CssRule.toStyleDeclaration
  | #...CssType.Syntax.pseudoClass as r => 
    CssPseudoClass.make(r)
    ->CssPseudoClass.toStyleDeclaration
  | #...CssType.Syntax.nestedAtRule as r =>
    CssNestedAtRule.make(r)
    ->CssNestedAtRule.toStyleDeclaration
  };
};