type t;

@module("@material-ui/core/styles")
external make: (
  Theme_Palette.t, 
  Theme_Palette.t => Theme_TypographyOptions.t,
) => t = "createTypography";

@send
external h1: t => ReactDOM.Style.t = "h1";
@send
external h2: t => ReactDOM.Style.t = "h2";
@send
external h3: t => ReactDOM.Style.t = "h3";
@send
external h4: t => ReactDOM.Style.t = "h4";
@send
external h5: t => ReactDOM.Style.t = "h5";
@send
external h6: t => ReactDOM.Style.t = "h6";
@send
external subtitle1: t => ReactDOM.Style.t = "subtitle1";
@send
external subtitle2: t => ReactDOM.Style.t = "subtitle2";
@send
external body1: t => ReactDOM.Style.t = "body1";
@send
external body2: t => ReactDOM.Style.t = "body2";
@send
external caption: t => ReactDOM.Style.t = "caption";
@send
external button: t => ReactDOM.Style.t = "caption";
@send
external overline: t => ReactDOM.Style.t = "overline";
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