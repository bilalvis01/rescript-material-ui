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