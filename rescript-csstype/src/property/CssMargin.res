type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

let property = "margin";

let { declaration } = module(CssDeclaration.Helper);
let { declarationFn } = module(CssDeclarationFn.Helper);
let {
  margin as m,
  margin2 as m2,
  margin3 as m3,
  margin4 as m4,
} = module(CssString);

external string: string => t = "%identity";
external number: float => t = "%identity";
/*
// This is jss' array based syntax
external numberArray: array<array<float>> => t = "%identity";
let number2 = (~tb, ~lr) => 
  [[tb, lr]]
  ->numberArray;
let number3 = (~top, ~lr, ~bottom) => 
  [[top, lr, bottom]]
  ->numberArray;
let number4 = (~top, ~right, ~bottom, ~left) => 
  [[top, right, bottom, left]]
  ->numberArray;
*/
let value = v => m(v)->string;
let value2 = (~tb, ~lr) => 
  m2(~tb, ~lr)
  ->string;
let value3 = (~top, ~lr, ~bottom) =>
  m3(~top, ~lr, ~bottom)
  ->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  m4(~top, ~right, ~bottom, ~left)
  ->string;

module DeclarationHelper = {
  let margin = v => 
    declaration(property, value(v));
  let margin2 = (~tb, ~lr) =>
    declaration(property, value2(~tb, ~lr));
  let margin3 = (~top, ~lr, ~bottom) =>
    declaration(property, value3(~top, ~lr, ~bottom));
  let margin4 = (~top, ~right, ~bottom, ~left) =>
    declaration(property, value4(~top, ~right, ~bottom, ~left));
  let marginUnion = v =>
    declaration(property, v);
  let marginString = v =>
    declaration(property, string(v));
  let marginNumber = v =>
    declaration(property, number(v));
  /*
  let margin2Number = (~tb, ~lr) =>
    declaration(number2(~tb, ~lr);
  let margin3Number = (~top, ~lr, ~bottom) =>
    declaration(number3(~top, ~lr, ~bottom);
  let margin4Number = (~top, ~right, ~bottom, ~left) =>
    declaration(number4(~top, ~right, ~bottom, ~left);
  */
};

module DeclarationFnHelper = {
  let marginFn = v => declarationFn(property, v);
};