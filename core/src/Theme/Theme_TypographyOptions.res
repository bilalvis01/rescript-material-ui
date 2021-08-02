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
  ~allVariants: ReactDOM.Style.t=?,
  ~h1: ReactDOM.Style.t=?,
  ~h2: ReactDOM.Style.t=?,
  ~h4: ReactDOM.Style.t=?,
  ~h5: ReactDOM.Style.t=?,
  ~h6: ReactDOM.Style.t=?,
  ~subtitle1: ReactDOM.Style.t=?,
  ~subtitle2: ReactDOM.Style.t=?,
  ~body1: ReactDOM.Style.t=?,
  ~body2: ReactDOM.Style.t=?,
  ~caption: ReactDOM.Style.t=?,
  ~button: ReactDOM.Style.t=?,
  ~overline: ReactDOM.Style.t=?,
  unit
) => t = "";