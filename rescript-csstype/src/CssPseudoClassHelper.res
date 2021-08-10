module Make = (
  Type: {
    type style;
    let style: array<CssAdvancedDeclarationsType.t<style>> => style; 
  }
) => {
  let hover = declarations =>
    #Hover(Type.style(declarations));
}