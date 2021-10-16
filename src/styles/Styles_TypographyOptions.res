type t;

@obj
external make: (
  ~fontFamily: Css.FontFamily.t=?,
  ~fontSize: float=?,
  ~fontWeightLight: Css.FontWeight.t=?,
  ~fontWeightRegular: Css.FontWeight.t=?,
  ~fontWeightMedium: Css.FontWeight.t=?,
  ~fontWeightBold: Css.FontWeight.t=?,
  ~htmlFontSize: float=?,
  ~allVariants: Css.Type.declarationBlock<'data>=?,
  ~h1: Css.Type.declarationBlock<'data>=?,
  ~h2: Css.Type.declarationBlock<'data>=?,
  ~h4: Css.Type.declarationBlock<'data>=?,
  ~h5: Css.Type.declarationBlock<'data>=?,
  ~h6: Css.Type.declarationBlock<'data>=?,
  ~subtitle1: Css.Type.declarationBlock<'data>=?,
  ~subtitle2: Css.Type.declarationBlock<'data>=?,
  ~body1: Css.Type.declarationBlock<'data>=?,
  ~body2: Css.Type.declarationBlock<'data>=?,
  ~caption: Css.Type.declarationBlock<'data>=?,
  ~button: Css.Type.declarationBlock<'data>=?,
  ~overline: Css.Type.declarationBlock<'data>=?,
  unit
) => t = "";