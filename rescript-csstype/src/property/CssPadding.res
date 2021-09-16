open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "padding";

external string: string => t = "%identity";
external number: float => t = "%identity";
/*
// this is jss' array based syntax
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
*/
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

module DeclarationHelper = {
  let padding = v => 
    declaration(property, value(v));
  let padding2 = (~tb, ~lr) =>
    declaration(property, value2(~tb, ~lr));
  let padding3 = (~top, ~lr, ~bottom) =>
    declaration(property, value3(~top, ~lr, ~bottom));
  let padding4 = (~top, ~right, ~bottom, ~left) =>
    declaration(property, value4(~top, ~right, ~bottom, ~left));
  let paddingUnion = v =>
    declaration(property, v);
  let paddingString = v =>
    declaration(property, string(v));
  let paddingNumber = v =>
    declaration(property, number(v));
  /*
  let padding2Number = (~tb, ~lr) =>
    declaration(number2(~tb, ~lr);
  let padding3Number = (~top, ~lr, ~bottom) =>
    declaration(number3(~top, ~lr, ~bottom);
  let padding4Number = (~top, ~right, ~bottom, ~left) =>
    declaration(number4(~top, ~right, ~bottom, ~left);
  */
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let paddingFn = v => declarationFn(property, v);
};