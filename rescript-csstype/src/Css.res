module Make = (
  Type: {
    type value;
    type style;
    type styles;
  }
) => {
  module PropertyValue = CssPropertyValue;
  module FontFace = CssFontFace;

  module Style = CssStyle.Make({ 
    type t = Type.style;
    type value = Type.value;
  });

  module Styles = CssStyles.Make({
    type t = Type.styles;
    type style = Type.style;
  });

  include CssStyleHelper.Make({
    type t = Type.style;
    let style = Style.make;
  });
  include CssValueHelper;
  include CssAtRuleHelper;

  let style = Style.make;
  let styles = Styles.make;
}

type value;
type style;
type styles;

include Make({
  type value = value;
  type style = style;
  type styles = styles;
})