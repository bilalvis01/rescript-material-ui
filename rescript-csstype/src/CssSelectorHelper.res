module Make = (
  Type: {
    type style;
    let style: array<CssStyleType.declaration<style>> => style;
  }
) => {
  let selector = (selector, declarations) => 
    #Selector(selector, Type.style(declarations));
}