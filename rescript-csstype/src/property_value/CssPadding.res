type t;
external string: string => t = "%identity";
external number: float => t = "%identity";
let value = v => CssValueString.padding_global(v)->string;
let value2 = (~tb, ~lr) => 
  `${CssValueString.padding(tb)} ${CssValueString.padding(lr)}`
  ->string;
let value3 = (~top, ~lr, ~bottom) =>
  `${CssValueString.padding(top)} ${CssValueString.padding(lr)} ${CssValueString.padding(bottom)}`
  ->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.padding(top)} ${CssValueString.padding(right)} ${CssValueString.padding(bottom)} ${CssValueString.padding(left)}`
  ->string;