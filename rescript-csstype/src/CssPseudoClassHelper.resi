module Make: (
  Type: {
    type style;
    let style: array<CssAdvancedDeclarationsType.t<style>> => style; 
  }
) => {
  let hover: array<CssAdvancedDeclarationsType.t<Type.style>> => 
    [> CssPseudoClassType.hover<Type.style> ];
}