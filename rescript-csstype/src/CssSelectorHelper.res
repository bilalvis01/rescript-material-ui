module Make = (
  Type: {
    type declarations<'data>;
    let declarations: array<CssAdvancedDeclarationConstructor.t<'data, declarations<'data>>> => declarations<'data>;
  }
) => {
  let selector = (selector, declarations) => 
    #Selector(selector, Type.declarations(declarations));
}