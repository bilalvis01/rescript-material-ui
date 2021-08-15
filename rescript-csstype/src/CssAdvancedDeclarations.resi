module Make: (
  Type: {
    type t;
    type value;
  }
) => {
  let make: array<CssAdvancedDeclarationsConstructor.t<Type.t>> => Type.t;
};