module Make = (
  Type: {
    type declarations;
    let declarations: array<CssAdvancedDeclarationsConstructor.t<declarations>> => declarations;
  }
) => {
  let selector = (selector, declarations) => 
    #Selector(selector, Type.declarations(declarations));
}