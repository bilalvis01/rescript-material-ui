module Make: (
  D: {
    type syntax<'data>;
    let styleDeclaration: syntax<'data> => CssType.styleDeclaration<'data>;
  }
) => {
  let make: array<D.syntax<'data>> => CssType.declarationBlock<'data>;
};