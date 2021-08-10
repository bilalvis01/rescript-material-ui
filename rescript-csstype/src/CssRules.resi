module Make: (
  Type: {
    type t;
    type declarations;
  }
) => {
  let make: array<CssRulesType.rule<Type.declarations>> => Type.t;
}