module Make: (
  Type: {
    type t;
    type value;
  }
) => {
  let make: array<CssStyleType.declaration<Type.t>> => Type.t;
};