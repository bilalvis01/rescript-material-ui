open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "clear";

external string: string => t = "%identity";
let value = v => CssValueString.clear_global(v)->string;

module DeclarationHelper = {
  let clear = v => declaration(property, value(v));
};

module DeclarationFnHelper = {
  let clearFn = v => declarationFn(property, v);
};