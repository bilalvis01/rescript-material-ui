type t;
external string: string => t = "%identity";
external number: float => t = "%identity";
let value = v => CssValueString.lineWidth_global(v)->string;
let value2 = (~tb, ~lr) => 
  `${CssValueString.lineWidth(tb)} ${CssValueString.lineWidth(lr)}`->string;
let value3 = (~top, ~lr, ~bottom) =>
  `${CssValueString.lineWidth(top)} ${CssValueString.lineWidth(lr)} ${CssValueString.lineWidth(bottom)}`
  ->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.lineWidth(top)} ${CssValueString.lineWidth(right)} ${CssValueString.lineWidth(bottom)} ${CssValueString.lineWidth(left)}`
  ->string;