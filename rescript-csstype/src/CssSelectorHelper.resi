module Make: (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationConstructor.t<declarations>> => declarations;
  }
) => {
  let selector: (string, array<CssAdvancedDeclarationConstructor.t<Type.declarations>>) => 
    [> CssSelectorType.t<Type.declarations> ];
};