open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "fontWeight";

external string: string => t = "%identity";
external number: float => t = "%identity";
let value = v => 
  CssValueString.fontWeight_global(v)
  ->string;

module DeclarationHelper = {
  let fontWeight = v =>
    declaration(property, value(v));
  let fontWeightUnion = v =>
    declaration(property, v);
  let fontWeightString = v =>
    declaration(property, string(v));
  let fontWeightNumber = v =>
    declaration(property, number(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let fontWeightFn = v => declarationFn(property, v);
};