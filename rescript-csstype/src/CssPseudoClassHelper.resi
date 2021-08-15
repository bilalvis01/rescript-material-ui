module Make: (
  Type: {
    type declarations<'data>;
    let declarations: array<CssAdvancedDeclarationConstructor.t<'data, declarations<'data>>> => declarations<'data>; 
  }
) => {
  let hover: array<CssAdvancedDeclarationConstructor.t<'data, Type.declarations<'data>>> => 
    [> CssPseudoClassConstructor.hover<Type.declarations<'data>> ];
}