module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value = (~width=?, ~color=?, style) => {
    let border = switch (width, color) {
    | (None, None) => None
    | (Some(w), None) => Some(CssValueString.lineWidth(w))
    | (None, Some(c)) => Some(CssValueString.color(c))
    | (Some(w), Some(c)) => Some(`${CssValueString.lineWidth(w)} ${CssValueString.color(c)}`)
    };
    switch (border, style) {
    | (_, #...CssValueType.global as g) => CssValueString.global(g)
    | (None, #...CssValueType.lineStyle as s) => CssValueString.lineStyle(s)
    | (Some(b), #...CssValueType.lineStyle as s) => `${b} ${CssValueString.lineStyle(s)}`
    }
    ->string
  };
};