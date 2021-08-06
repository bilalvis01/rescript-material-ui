module Make = (
  Type: {
    type style;
    let style: array<CssStyleType.declaration<style>> => style; 
  }
) => {
  let hover = declarations =>
    #Hover(Type.style(declarations));
}