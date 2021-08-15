module Make: (
  Type: {
    type declarations<'data>;
    let declarations: array<CssAdvancedDeclarationConstructor.t<'data, declarations<'data>>> => declarations<'data>;
  }
) => {
  let selector: (string, array<CssAdvancedDeclarationConstructor.t<'data, Type.declarations<'data>>>) => 
    [> CssSelectorConstructor.t<Type.declarations<'data>> ];
};