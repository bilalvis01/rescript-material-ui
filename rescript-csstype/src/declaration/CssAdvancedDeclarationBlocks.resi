module Make: (
  Type: {
    type t<'data>;
    type value<'data>;
  }
) => {
  let make: array<CssAdvancedDeclarationConstructor.t<'data, Type.t<'data>>> => Type.t<'data>;
};