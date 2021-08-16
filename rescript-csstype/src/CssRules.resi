module Make: (
  Type: {
    type t<'data>;
    type declarations<'data>;
  }
) => {
  let make: array<CssRuleConstructor.t<Type.declarations<'data>>> => Type.t<'data>;
}