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

module PropertyValue = CssPropertyValue;
module FontFace = CssFontFace;

include CssValueHelper;

let style = Style.make;