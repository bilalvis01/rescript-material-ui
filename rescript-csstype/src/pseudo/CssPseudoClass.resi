let make: CssType.Syntax.pseudoClass<'data> => CssType.styleRule<'data>;

external toStyleDeclaration: CssType.styleRule<'data> => CssType.styleDeclaration<'data> = "%identity";

module MakeHelper: (
  D: {
    type syntax<'data>;
    let declarationBlock: array<syntax<'data>> => CssType.declarationBlock<'data>; 
  }
) => {
  type declarations<'data> = array<D.syntax<'data>>;
  let pseudoClass: (string, declarations<'data>) => CssType.Syntax.psc<'a, 'data>;
  let hover: declarations<'data> => CssType.Syntax.psc<'a, 'data>;
}