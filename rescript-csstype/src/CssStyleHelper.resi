module Make: (
  Type: {
    type t;
    let style: array<CssStyleType.declarations<t>> => t;
  }
) => {
  let selector: (string, array<CssStyleType.declarations<Type.t>>) => 
    [> CssStyleType.selector<Type.t> ];

  let hover: array<CssStyleType.declarations<Type.t>> => 
    [> CssStyleType.hover<Type.t> ];

  let fontFace: array<CssFontFace.descriptor> => 
    [> CssStyleType.fontFace ];
};