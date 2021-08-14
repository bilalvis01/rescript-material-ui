type t;
external string: string => t = "%identity";
let value: (
  ~width: CssValueType.lineWidth=?,
  ~color: CssValueType.color=?,
  [ | CssValueType.global | CssValueType.lineStyle ]
) => t;