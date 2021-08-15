module Make: (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationsConstructor.t<declarations>> => declarations;
  }
) => {
  let selector: (string, array<CssAdvancedDeclarationsConstructor.t<Type.declarations>>) => 
    [> CssSelectorType.t<Type.declarations> ];
};