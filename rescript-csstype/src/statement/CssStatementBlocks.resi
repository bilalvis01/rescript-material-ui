module Make: (
  Type: {
    type t<'data>;
    type declarationBlocks<'data>;
  }
) => {
  let make: array<CssStatementConstructor.t<Type.declarationBlocks<'data>>> => Type.t<'data>;
}