module Make: (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationsConstructor.t<declarations>> => declarations; 
  }
) => {
  let hover: array<CssAdvancedDeclarationsConstructor.t<Type.declarations>> => 
    [> CssPseudoClassType.hover<Type.declarations> ];
}