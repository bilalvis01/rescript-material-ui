module Make: (
  Type: {
    type t;
    type declarations;
  }
) => {
  let make: array<CssRuleConstructor.rule<Type.declarations>> => Type.t;
}