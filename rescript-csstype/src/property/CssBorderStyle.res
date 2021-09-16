open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderStyle";

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

module DeclarationHelper = {
  let borderStyle = v => 
    declaration(property, value(v));
  let borderStyle2 = (~tb, ~lr) => 
    declaration(property, value2(~tb, ~lr));
  let borderStyle3 = (~top, ~lr, ~bottom) =>
    declaration(property, value3(~top, ~lr, ~bottom));
  let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
    declaration(property, value4(~top, ~right, ~bottom, ~left));
  let borderStyleUnion = v =>
    declaration(property, v);
  let borderStyleString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderStyleFn = v => declarationFn(property, v);
};