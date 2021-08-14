type t;
external string: string => t = "%identity";
let value = v => CssValueString.lineStyle_global(v)->string;
let value2 = (~tb, ~lr) =>
  `${CssValueString.lineStyle(tb)} ${CssValueString.lineStyle(lr)}`->string;
let value3 = (~top, ~lr, ~bottom) =>
  `${CssValueString.lineStyle(top)} ${CssValueString.lineStyle(lr)} ${CssValueString.lineStyle(bottom)}`
  ->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.lineStyle(top)} ${CssValueString.lineStyle(right)} ${CssValueString.lineStyle(bottom)} ${CssValueString.lineStyle(left)}`
  ->string;