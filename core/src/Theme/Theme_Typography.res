type t;

@module("@material-ui/core/styles")
external make: (
  Theme_Palette.t, 
  Theme_Palette.t => Theme_TypographyOptions.t,
) => t = "createTypography";

@send
external h1: t => Css.style = "h1";
@send
external h2: t => Css.style = "h2";
@send
external h3: t => Css.style = "h3";
@send
external h4: t => Css.style = "h4";
@send
external h5: t => Css.style = "h5";
@send
external h6: t => Css.style = "h6";
@send
external subtitle1: t => Css.style = "subtitle1";
@send
external subtitle2: t => Css.style = "subtitle2";
@send
external body1: t => Css.style = "body1";
@send
external body2: t => Css.style = "body2";
@send
external caption: t => Css.style = "caption";
@send
external button: t => Css.style = "caption";
@send
external overline: t => Css.style = "overline";
@send
external fontFamily: t => string = "fontFamily";
@send
external fontSize: t => float = "fontSize";
@send
external fontWeightLight: t => string = "fontWeightLight";
@send
external fontWeightRegular: t => string = "fontWeightRegular";
@send
external fontWeightMedium: t => string = "fontWeightMedium";
@send
external fontWeightBold: t => string = "fontWeightBold";
@send
external htmlFontSize: t => float = "htmlFontSize";
@send
external pxToRem: (t, float) => string ="pxToRem"; 