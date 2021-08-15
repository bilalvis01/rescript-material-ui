module Make: (
  Type: {
    type t;
    type value;
  }
) => {
  let make: array<CssAdvancedDeclarationConstructor.t<Type.t>> => Type.t;
};