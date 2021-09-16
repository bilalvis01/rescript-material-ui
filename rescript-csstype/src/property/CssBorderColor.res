open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "borderColor";

external string: string => t = "%identity";
let value = v => CssValueString.color_global(v)->string;
let value2 = (~tb, ~lr) => `${CssValueString.color(tb)} ${CssValueString.color(lr)}`->string;
let value3 = (~top, ~lr, ~bottom) => 
  `${CssValueString.color(top)} ${CssValueString.color(lr)} ${CssValueString.color(bottom)}`->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.color(top)} ${CssValueString.color(right)} ${CssValueString.color(bottom)} ${CssValueString.color(left)}`
  ->string;

module DeclarationHelper = {
  let borderColor = v => 
    declaration(property, value(v));
  let borderColor2 = (~tb, ~lr) => 
    declaration(property, value2(~tb, ~lr));
  let borderColor3 = (~top, ~lr, ~bottom) =>
    declaration(property, value3(~top, ~lr, ~bottom));
  let borderColor4 = (~top, ~right, ~bottom, ~left) =>
    declaration(property, value4(~top, ~right, ~bottom, ~left));
  let borderColorUnion = v =>
    declaration(property, v);
  let borderColorString = v => 
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderColorFn = v => declarationFn(property, v);
};