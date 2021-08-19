module Make = (
  Type: {
    type declarationBlocks<'data>;
    let declarationBlocks: 
      array<CssAdvancedDeclarationConstructor.t<'data, declarationBlocks<'data>>> => 
      declarationBlocks<'data>; 
  }
) => {
  let hover = declarations => #Hover(Type.declarationBlocks(declarations));
}