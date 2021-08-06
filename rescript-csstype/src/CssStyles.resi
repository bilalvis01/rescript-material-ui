module Make: (
  Type: {
    type t;
    type style;
  }
) => {
  let make: array<CssStylesType.rule<Type.style>> => Type.t;
}