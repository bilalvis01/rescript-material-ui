module Make: (
  Type: {
    type style;
    let style: array<CssStyleType.declaration<style>> => style;
  }
) => {
  let selector: (string, array<CssStyleType.declaration<Type.style>>) => 
    [> CssSelectorType.t<Type.style> ];
};