type t;
external string: string => t = "%identity";
external number: float => t = "%identity";
external numberArray: array<float> => t = "%identity";
let number2 = (~tb, ~lr) => 
  [tb, lr]
  ->numberArray;
let number3 = (~top, ~lr, ~bottom) => 
  [top, lr, bottom]
  ->numberArray;
let number4 = (~top, ~right, ~bottom, ~left) => 
  [top, right, bottom, left]
  ->numberArray;
let value = v => CssValueString.margin_global(v)->string;
let value2 = (~tb, ~lr) => 
  `${CssValueString.margin(tb)} ${CssValueString.margin(lr)}`
  ->string;
let value3 = (~top, ~lr, ~bottom) =>
  `${CssValueString.margin(top)} ${CssValueString.margin(lr)} ${CssValueString.margin(bottom)}`
  ->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.margin(top)} ${CssValueString.margin(right)} ${CssValueString.margin(bottom)} ${CssValueString.margin(left)}`
  ->string;