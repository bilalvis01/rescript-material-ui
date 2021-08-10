module Make: (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationsType.t<declarations>> => declarations; 
  }
) => {
  let hover: array<CssAdvancedDeclarationsType.t<Type.declarations>> => 
    [> CssPseudoClassType.hover<Type.declarations> ];
}