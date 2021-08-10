module Make = (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationsType.t<declarations>> => declarations;
  }
) => {
  let selector = (selector, declarations) => 
    #Selector(selector, Type.declarations(declarations));
}