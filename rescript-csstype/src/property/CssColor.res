open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "color";

external string: string => t = "%identity";
let value = v => CssValueString.color_global(v)->string;

module DeclarationHelper = {
  let color = v =>
    declaration(property, value(v));
  let colorUnion = v =>
    declaration(property, v);
  let colorString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let colorFn = v => declarationFn(property, v);
};