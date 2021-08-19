module Make: (
  Type: {
    type declarationBlocks<'data>;
    let declarationBlocks: 
      array<CssAdvancedDeclarationConstructor.t<'data, declarationBlocks<'data>>> => 
      declarationBlocks<'data>;
  }
) => {
  let rule: 
    (string, array<CssAdvancedDeclarationConstructor.t<'data, Type.declarationBlocks<'data>>>) => 
    [> CssRuleConstructor.t<Type.declarationBlocks<'data>> ];
};