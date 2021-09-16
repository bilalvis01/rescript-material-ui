open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "fontFamily";

external string: string => t = "%identity";
let value = v => 
  CssValueString.fontFamily_global(v)
  ->string;
let value2 = (v1, v2) =>
  `${CssValueString.fontFamily(v1)}, ${CssValueString.fontFamily(v2)}`
  ->string;
let value3 = (v1, v2, v3) =>
  `${CssValueString.fontFamily(v1)}, ${CssValueString.fontFamily(v2)}, ${CssValueString.fontFamily(v3)}`
  ->string;
let value4 = (v1, v2, v3, v4) =>
  `${CssValueString.fontFamily(v1)}, ${CssValueString.fontFamily(v2)}, ${CssValueString.fontFamily(v3)}, ${CssValueString.fontFamily(v4)}`
  ->string;

module DeclarationHelper = {
  let fontFamily = v =>
    declaration(property, value(v));
  let fontFamily2 = (v1, v2) =>
    declaration(property, value2(v1, v2));
  let fontFamily3 = (v1, v2, v3) =>
    declaration(property, value3(v1, v2, v3));
  let fontFamily4 = (v1, v2, v3, v4) =>
    declaration(property, value4(v1, v2, v3, v4));
  let fontFamilyUnion = v =>
    declaration(property, v);
  let fontFamilyString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let fontFamilyFn = v => declarationFn(property, v);
};  