type t;

@module("@material-ui/core/styles")
external make: (
  Styles_Palette.t, 
  Styles_Palette.t => Styles_TypographyOptions.t,
) => t = "createTypography";

@get
external h1: t => Css.Type.declarationBlock<'data> = "h1";
@get
external h2: t => Css.Type.declarationBlock<'data> = "h2";
@get
external h3: t => Css.Type.declarationBlock<'data> = "h3";
@get
external h4: t => Css.Type.declarationBlock<'data> = "h4";
@get
external h5: t => Css.Type.declarationBlock<'data> = "h5";
@get
external h6: t => Css.Type.declarationBlock<'data> = "h6";
@get
external subtitle1: t => Css.Type.declarationBlock<'data> = "subtitle1";
@get
external subtitle2: t => Css.Type.declarationBlock<'data> = "subtitle2";
@get
external body1: t => Css.Type.declarationBlock<'data> = "body1";
@get
external body2: t => Css.Type.declarationBlock<'data> = "body2";
@get
external caption: t => Css.Type.declarationBlock<'data> = "caption";
@get
external button: t => Css.Type.declarationBlock<'data> = "button";
@get
external overline: t => Css.Type.declarationBlock<'data> = "overline";
@get
external fontFamily: t => string = "fontFamily";
@get
external fontSize: t => float = "fontSize";
@get
external fontWeightLight: t => Css.FontWeight.t = "fontWeightLight";
@get
external fontWeightRegular: t => Css.FontWeight.t = "fontWeightRegular";
@get
external fontWeightMedium: t => Css.FontWeight.t = "fontWeightMedium";
@get
external fontWeightBold: t => Css.FontWeight.t = "fontWeightBold";
@get
external htmlFontSize: t => float = "htmlFontSize";
@send
external pxToRem: (t, float) => string ="pxToRem"; 