type t;

@module("@material-ui/core/styles")
external make: (
  Styles_Palette.t, 
  Styles_Palette.t => Styles_TypographyOptions.t,
) => t = "createTypography";

@get
external h1: t => Css.declarations = "h1";
@get
external h2: t => Css.declarations = "h2";
@get
external h3: t => Css.declarations = "h3";
@get
external h4: t => Css.declarations = "h4";
@get
external h5: t => Css.declarations = "h5";
@get
external h6: t => Css.declarations = "h6";
@get
external subtitle1: t => Css.declarations = "subtitle1";
@get
external subtitle2: t => Css.declarations = "subtitle2";
@get
external body1: t => Css.declarations = "body1";
@get
external body2: t => Css.declarations = "body2";
@get
external caption: t => Css.declarations = "caption";
@get
external button: t => Css.declarations = "button";
@get
external overline: t => Css.declarations = "overline";
@get
external fontFamily: t => string = "fontFamily";
@get
external fontSize: t => float = "fontSize";
@get
external fontWeightLight: t => Css.PropertyValue.t_fontWeight = "fontWeightLight";
@get
external fontWeightRegular: t => Css.PropertyValue.t_fontWeight = "fontWeightRegular";
@get
external fontWeightMedium: t => Css.PropertyValue.t_fontWeight = "fontWeightMedium";
@get
external fontWeightBold: t => Css.PropertyValue.t_fontWeight = "fontWeightBold";
@get
external htmlFontSize: t => float = "htmlFontSize";
@send
external pxToRem: (t, float) => string ="pxToRem"; 