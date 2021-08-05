module Make: (
  Type: {
    type t;
    let style: array<CssStyleType.declarations<t>> => t;
  }
) => {
  include (module type of CssDeclarationHelper);

  let selector: (string, array<CssStyleType.declarations<Type.t>>) => 
    [> CssStyleType.selector<Type.t> ];

  let hover: array<CssStyleType.declarations<Type.t>> => 
    [> CssStyleType.hover<Type.t> ];

  let fontFace: array<CssFontFace.descriptor> => 
    [> CssStyleType.fontFace ];
};