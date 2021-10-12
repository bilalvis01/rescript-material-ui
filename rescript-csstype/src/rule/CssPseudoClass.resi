let make: CssType.pseudoClass<'data> => CssType.styleRuleEntry<'data>;

external toStyleDeclaration: CssType.styleRuleEntry<'data> => CssType.styleDeclarationEntry<'data> = "%identity";

module MakeHelper: (
  DeclarationBlock: {
    type styleDeclaration<'data>;
    let declarationBlock: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>; 
  }
) => {
  type declarations<'data> = array<DeclarationBlock.styleDeclaration<'data>>;
  let pseudoClass: (string, declarations<'data>) => CssType.psc<'a, 'data>;
  let hover: declarations<'data> => CssType.psc<'a, 'data>;
}