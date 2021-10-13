let make: CssType.Syntax.pseudoClass<'data> => CssType.styleRule<'data>;

external toStyleDeclaration: CssType.styleRule<'data> => CssType.styleDeclaration<'data> = "%identity";

module MakeHelper: (
  DeclarationBlock: {
    type styleDeclaration<'data>;
    let declarationBlock: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>; 
  }
) => {
  type declarations<'data> = array<DeclarationBlock.styleDeclaration<'data>>;
  let pseudoClass: (string, declarations<'data>) => CssType.Syntax.psc<'a, 'data>;
  let hover: declarations<'data> => CssType.Syntax.psc<'a, 'data>;
}