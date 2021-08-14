type t;
external string: string => t = "%identity";
let value = v => CssValueString.color_global(v)->string;
let value2 = (~tb, ~lr) => `${CssValueString.color(tb)} ${CssValueString.color(lr)}`->string;
let value3 = (~top, ~lr, ~bottom) => 
  `${CssValueString.color(top)} ${CssValueString.color(lr)} ${CssValueString.color(bottom)}`->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.color(top)} ${CssValueString.color(right)} ${CssValueString.color(bottom)} ${CssValueString.color(left)}`
  ->string;