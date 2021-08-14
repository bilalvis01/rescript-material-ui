module Make: (
  Type: {
    type t;
    type value;
  }
) => {
  let make: array<CssDeclarationType.t> => Type.t;
}