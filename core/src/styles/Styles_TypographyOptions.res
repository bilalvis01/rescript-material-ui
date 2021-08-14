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
  ~allVariants: Css.declarations=?,
  ~h1: Css.declarations=?,
  ~h2: Css.declarations=?,
  ~h4: Css.declarations=?,
  ~h5: Css.declarations=?,
  ~h6: Css.declarations=?,
  ~subtitle1: Css.declarations=?,
  ~subtitle2: Css.declarations=?,
  ~body1: Css.declarations=?,
  ~body2: Css.declarations=?,
  ~caption: Css.declarations=?,
  ~button: Css.declarations=?,
  ~overline: Css.declarations=?,
  unit
) => t = "";