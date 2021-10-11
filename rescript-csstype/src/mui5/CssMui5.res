let sx = CssMui5DeclarationBlock.make;
let styles = CssMui5Statements.make;

include CssHelper.Make({  
  type styleDeclaration<'data> = CssMui5DeclarationBlock.styleDeclaration<'data>;
  let declarationBlock = CssMui5DeclarationBlock.make; 
});