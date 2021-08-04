module Make = (
  Type: {
    type t;
    let style: array<CssStyleType.declarations<t>> => t;
  }
) => {
  let selector = (selector, declarations) => 
    #Selector(selector, Type.style(declarations));

  let hover = declarations =>
    #Hover(Type.style(declarations));

  let fontFace = descriptors => 
    #FontFace(CssFontFace.make(descriptors));
};