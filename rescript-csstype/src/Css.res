module type MakeStyleType = (
  Type: {
    type t;
  }
) => {
  let style: array<(string, CssPropertyValue.box)> => Type.t;
};

module MakeStyle: MakeStyleType = (
  Type: {
    type t;
  }
) => {
  external makeStyle: Js.Dict.t<CssPropertyValue.box> => Type.t = "%identity";
  let style = entries => Js.Dict.fromArray(entries)->makeStyle;
};

include CssValue;
include CssFunction;
include CssProperty;
include MakeStyle({ type t = Js.Dict.t<CssPropertyValue.box> });