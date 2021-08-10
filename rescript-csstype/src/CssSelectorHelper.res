module Make = (
  Type: {
    type style;
    let style: array<CssAdvancedDeclarationsType.t<style>> => style;
  }
) => {
  let selector = (selector, declarations) => 
    #Selector(selector, Type.style(declarations));
}