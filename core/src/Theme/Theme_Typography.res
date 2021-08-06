type t;

@module("@material-ui/core/styles")
external make: (
  Theme_Palette.t, 
  Theme_Palette.t => Theme_TypographyOptions.t,
) => t = "createTypography";

@get
external h1: t => Css.style = "h1";
@get
external h2: t => Css.style = "h2";
@get
external h3: t => Css.style = "h3";
@get
external h4: t => Css.style = "h4";
@get
external h5: t => Css.style = "h5";
@get
external h6: t => Css.style = "h6";
@get
external subtitle1: t => Css.style = "subtitle1";
@get
external subtitle2: t => Css.style = "subtitle2";
@get
external body1: t => Css.style = "body1";
@get
external body2: t => Css.style = "body2";
@get
external caption: t => Css.style = "caption";
@get
external button: t => Css.style = "caption";
@get
external overline: t => Css.style = "overline";
@get
external fontFamily: t => string = "fontFamily";
@get
external fontSize: t => float = "fontSize";
@get
external fontWeightLight: t => string = "fontWeightLight";
@get
external fontWeightRegular: t => string = "fontWeightRegular";
@get
external fontWeightMedium: t => string = "fontWeightMedium";
@get
external fontWeightBold: t => string = "fontWeightBold";
@get
external htmlFontSize: t => float = "htmlFontSize";
@send
external pxToRem: (t, float) => string ="pxToRem"; 