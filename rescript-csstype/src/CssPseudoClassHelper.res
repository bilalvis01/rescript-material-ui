module Make = (
  Type: {
    type declarations<'data>;
    let declarations: array<CssAdvancedDeclarationConstructor.t<'data, declarations<'data>>> => declarations<'data>; 
  }
) => {
  let hover = declarations =>
    #Hover(Type.declarations(declarations));
}