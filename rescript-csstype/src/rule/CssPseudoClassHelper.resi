module Make: (
  Type: {
    type declarationBlocks<'data>;
    let declarationBlocks: 
      array<CssAdvancedDeclarationConstructor.t<'data, declarationBlocks<'data>>> => 
      declarationBlocks<'data>; 
  }
) => {
  let hover: 
    array<CssAdvancedDeclarationConstructor.t<'data, Type.declarationBlocks<'data>>> => 
    [> CssPseudoClassConstructor.hover<Type.declarationBlocks<'data>> ];
}