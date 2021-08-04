type style;
type value;

module Style = CssStyle.Make({ 
  type t = style;
  type value = value;
});

include CssStyleHelper.Make({
  type t = style;
  let style = Style.make;
});
include CssDeclarationHelper;

module PropertyValue = CssPropertyValue;
module FontFace = CssFontFace;

include CssValue;
include CssFunction;

let style = Style.make;