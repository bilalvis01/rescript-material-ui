type constructor<'data, 'declarationBlock> = [
  | CssAdvancedDeclaration.constructor<'data, 'declarationBlock>
  | CssJssImportant.constructor<'data>
];

module Make: (
  Type: {
    type t<'data>;
    type value<'data>;
  }
) => {
  let make: array<constructor<'data, Type.t<'data>>> => Type.t<'data>;
};