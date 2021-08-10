module Make: (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationsType.t<declarations>> => declarations;
  }
) => {
  let selector: (string, array<CssAdvancedDeclarationsType.t<Type.declarations>>) => 
    [> CssSelectorType.t<Type.declarations> ];
};