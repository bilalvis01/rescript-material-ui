open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderWidth";

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

module DeclarationHelper = {
  let borderWidth = v => 
    declaration(property, value(v));
  let borderWidth2 = (~tb, ~lr) => 
    declaration(property, value2(~tb, ~lr));
  let borderWidth3 = (~top, ~lr, ~bottom) =>
    declaration(property, value3(~top, ~lr, ~bottom));
  let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
    declaration(property, value4(~top, ~right, ~bottom, ~left));
  let borderWidthUnion = v =>
    declaration(property, v);
  let borderWidthString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderWidthFn = v => declarationFn(property, v);
};