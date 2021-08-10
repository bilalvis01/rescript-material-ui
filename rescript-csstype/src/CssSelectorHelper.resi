module Make: (
  Type: {
    type style;
    let style: array<CssAdvancedDeclarationsType.t<style>> => style;
  }
) => {
  let selector: (string, array<CssAdvancedDeclarationsType.t<Type.style>>) => 
    [> CssSelectorType.t<Type.style> ];
};