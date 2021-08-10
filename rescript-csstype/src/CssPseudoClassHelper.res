module Make = (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationsType.t<declarations>> => declarations; 
  }
) => {
  let hover = declarations =>
    #Hover(Type.declarations(declarations));
}