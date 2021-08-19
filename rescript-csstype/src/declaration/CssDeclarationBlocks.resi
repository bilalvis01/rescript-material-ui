module Make: (
  Type: {
    type t;
    type value;
  }
) => {
  let make: array<CssDeclarationConstructor.t> => Type.t;
}