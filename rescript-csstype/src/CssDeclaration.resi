module Make: (
  Type: {
    type value;
  }
) => {
  type t = (string, Type.value);

  let make: CssDeclarationConstructor.t => t;
};