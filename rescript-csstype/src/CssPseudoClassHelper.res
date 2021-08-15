module Make = (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationsConstructor.t<declarations>> => declarations; 
  }
) => {
  let hover = declarations =>
    #Hover(Type.declarations(declarations));
}