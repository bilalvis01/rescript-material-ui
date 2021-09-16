open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "backgroundStyle";

external string: string => t = "%identity";
let value = v => CssValueString.repeatStyle(v)->string;
let value2 = (v1, v2) => 
  `${CssValueString.repeatStyle(v1)}, ${CssValueString.repeatStyle(v2)}`
  ->string;
let value3 = (v1, v2, v3) => 
  `${CssValueString.repeatStyle(v1)}, ${CssValueString.repeatStyle(v2)}, ${CssValueString.repeatStyle(v3)}`
  ->string;
let value4 = (v1, v2, v3, v4) => 
  `${CssValueString.repeatStyle(v1)}, ${CssValueString.repeatStyle(v2)}, ${CssValueString.repeatStyle(v3)}, ${CssValueString.repeatStyle(v4)}`
  ->string;

module DeclarationHelper = {
  let backgroundStyle = v =>
    declaration(property, value(v));
  let backgroundStyle2 = (v1, v2) =>
    declaration(property, value2(v1, v2));
  let backgroundStyle3 = (v1, v2, v3) =>
    declaration(property, value3(v1, v2, v3));
  let backgroundStyle4 = (v1, v2, v3, v4) =>
    declaration(property, value4(v1, v2, v3, v4));
  let backgroundStyleUnion = v =>
    declaration(property, v);
  let backgroundStyleString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let backgroundStyleFn = v => declarationFn(property, v);
};
