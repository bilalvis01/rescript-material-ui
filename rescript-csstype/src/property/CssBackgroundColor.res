open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "backgroundColor";

external string: string => t = "%identity";
let value = v => CssValueString.color(v)->string;

module DeclarationHelper = {
  let backgroundColor = v =>
    declaration(property, value(v));
  let backgroundColorUnion = v =>
    declaration(property, v);
  let backgroundColorString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let backgroundColorFn = v => declarationFn(property, v);
};