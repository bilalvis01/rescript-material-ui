module Make: (
  Type: {
    type t;
    type style;
  }
) => {
  let make: array<CssRulesType.rule<Type.style>> => Type.t;
}