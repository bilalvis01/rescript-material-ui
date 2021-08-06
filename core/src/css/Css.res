type value;
type style;
type styles;

include Ress.Css.Make({
  type value = value;
  type style = style;
  type styles = styles;
});

module React = CssReact;