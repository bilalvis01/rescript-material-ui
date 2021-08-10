module Make: (
  Type: {
    type t;
    type value;
  }
) => {
  let make: array<CssAdvancedDeclarationsType.t<Type.t>> => Type.t;
};