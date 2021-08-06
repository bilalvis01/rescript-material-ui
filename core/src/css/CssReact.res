type value;
type style = ReactDOM.Style.t;

include Ress.CssDeclarations.Make({
  type value = value;
  type style = style;
});