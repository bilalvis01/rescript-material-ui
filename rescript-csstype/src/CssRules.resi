module Make: (
  Type: {
    type t<'data>;
    type declarations<'data>;
  }
) => {
  let make: array<CssRuleConstructor.rule<Type.declarations<'data>>> => Type.t<'data>;
}