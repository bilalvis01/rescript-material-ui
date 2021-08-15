module Make = (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationConstructor.t<declarations>> => declarations; 
  }
) => {
  let hover = declarations =>
    #Hover(Type.declarations(declarations));
}