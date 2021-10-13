let make: CssType.Syntax.rule<'data> => CssType.styleRule<'data>;

external toStyleDeclaration: CssType.styleRule<'data> => CssType.styleDeclaration<'data> = "%identity";

module MakeHelper: (
  D: {
    type syntax<'data>;
    let declarationBlock: array<syntax<'data>> => CssType.declarationBlock<'data>;
  }
) => {
  let rule: (string, array<D.syntax<'data>>) => CssType.Syntax.r<'a, 'data>;
};