module Make: (
  Type: {
    type declarationBlocks<'data>;
  }
) => {
  type t<'data> = (string, Type.declarationBlocks<'data>);

  let make: CssStatementConstructor.t<Type.declarationBlocks<'data>> => t<'data>;
}