type constructor<'declarationBlock> = [
  | CssStatement.constructor<'declarationBlock>
];

module Make: (
  Type: {
    type t<'data>;
    type declarationBlock<'data>;
  }
) => {
  let make: array<constructor<Type.declarationBlock<'data>>> => Type.t<'data>;
}