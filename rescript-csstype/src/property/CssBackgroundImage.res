open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "backgroundImage";

external string: string => t = "%identity";
let value = v => CssValueString.bgImage(v)->string;
let value2 = (v1, v2) => 
  `${CssValueString.bgImage(v1)}, ${CssValueString.bgImage(v2)}`
  ->string;
let value3 = (v1, v2, v3) => 
  `${CssValueString.bgImage(v1)}, ${CssValueString.bgImage(v2)}, ${CssValueString.bgImage(v3)}`
  ->string;
let value4 = (v1, v2, v3, v4) => 
  `${CssValueString.bgImage(v1)}, ${CssValueString.bgImage(v2)}, ${CssValueString.bgImage(v3)}, ${CssValueString.bgImage(v4)}`
  ->string;

module DeclarationHelper = {
  let backgroundImage = v =>
    declaration(property, value(v));
  let backgroundImage2 = (v1, v2) =>
    declaration(property, value2(v1, v2));
  let backgroundImage3 = (v1, v2, v3) =>
    declaration(property, value3(v1, v2, v3));
  let backgroundImage4 = (v1, v2, v3, v4) =>
    declaration(property, value4(v1, v2, v3, v4));
  let backgroundImageUnion = v =>
    declaration(property, v);
  let backgroundImageString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let backgroundImageFn = v => declarationFn(property, v);
};