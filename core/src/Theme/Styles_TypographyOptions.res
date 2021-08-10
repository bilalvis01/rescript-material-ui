type t;

@obj
external make: (
  ~fontFamily: Css.PropertyValue.t_fontFamily=?,
  ~fontSize: float=?,
  ~fontWeightLight: Css.PropertyValue.t_fontWeight=?,
  ~fontWeightRegular: Css.PropertyValue.t_fontWeight=?,
  ~fontWeightMedium: Css.PropertyValue.t_fontWeight=?,
  ~fontWeightBold: Css.PropertyValue.t_fontWeight=?,
  ~htmlFontSize: float=?,
  ~allVariants: Css.style=?,
  ~h1: Css.style=?,
  ~h2: Css.style=?,
  ~h4: Css.style=?,
  ~h5: Css.style=?,
  ~h6: Css.style=?,
  ~subtitle1: Css.style=?,
  ~subtitle2: Css.style=?,
  ~body1: Css.style=?,
  ~body2: Css.style=?,
  ~caption: Css.style=?,
  ~button: Css.style=?,
  ~overline: Css.style=?,
  unit
) => t = "";