module Make: (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationConstructor.t<declarations>> => declarations; 
  }
) => {
  let hover: array<CssAdvancedDeclarationConstructor.t<Type.declarations>> => 
    [> CssPseudoClassConstructor.hover<Type.declarations> ];
}