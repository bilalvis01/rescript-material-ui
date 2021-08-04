module Make: (
  Type: {
    type t;
    type value;
  }
) => {
  let make: array<CssStyleType.declarations<Type.t>> => Type.t;
};