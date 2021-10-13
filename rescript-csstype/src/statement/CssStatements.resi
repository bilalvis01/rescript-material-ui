module Make: (
  R: {
    type syntax<'data>;
    let styleRule: syntax<'data> => CssType.styleRule<'data>;
  }
) => {
  let make: array<R.syntax<'data>> => CssType.statements<'data>;
};