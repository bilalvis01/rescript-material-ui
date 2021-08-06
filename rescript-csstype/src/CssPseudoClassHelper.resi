module Make: (
  Type: {
    type style;
    let style: array<CssStyleType.declaration<style>> => style; 
  }
) => {
  let hover: array<CssStyleType.declaration<Type.style>> => 
    [> CssPseudoClassType.hover<Type.style> ];
}