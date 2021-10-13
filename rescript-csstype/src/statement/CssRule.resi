let make: CssType.Syntax.rule<'data> => CssType.styleRule<'data>;

external toStyleDeclaration: CssType.styleRule<'data> => CssType.styleDeclaration<'data> = "%identity";

module MakeHelper: (
  DeclarationBlock: {
    type styleDeclaration<'data>;
    let declarationBlock: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>;
  }
) => {
  let rule: (string, array<DeclarationBlock.styleDeclaration<'data>>) => CssType.Syntax.r<'a, 'data>;
};