type tag;
type t = CssValueType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "padding";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  padding as p,
  padding2 as p2,
  padding3 as p3,
  padding4 as p4,
} = module(CssPropertyValueString);

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
let value = v => p(v)->string;
let value2 = (~tb, ~lr) => 
  p2(~tb, ~lr)
  ->string;
let value3 = (~top, ~lr, ~bottom) =>
  p3(~top, ~lr, ~bottom)
  ->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  p4(~top, ~right, ~bottom, ~left)
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
  let paddingFn = v => declarationFn(property, v);
};