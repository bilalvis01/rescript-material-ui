module Make = (
  Type: {
    type declarationBlocks<'data>;
    let declarationBlocks: 
      array<CssAdvancedDeclarationConstructor.t<'data, declarationBlocks<'data>>> => 
      declarationBlocks<'data>;
  }
) => {
  let rule = (selector, declarations) => 
    #Rule(selector, Type.declarationBlocks(declarations));
}