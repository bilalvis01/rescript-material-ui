open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "backgroundPosition";

external string: string => t = "%identity";
let value = v => CssValueString.position(v)->string;
let value2 = (v1, v2) => 
  `${CssValueString.position(v1)}, ${CssValueString.position(v2)}`
  ->string;
let value3 = (v1, v2, v3) => 
  `${CssValueString.position(v1)}, ${CssValueString.position(v2)}, ${CssValueString.position(v3)}`
  ->string;
let value4 = (v1, v2, v3, v4) => 
  `${CssValueString.position(v1)}, ${CssValueString.position(v2)}, ${CssValueString.position(v3)}, ${CssValueString.position(v4)}`
  ->string;

module DeclarationHelper = {
  let backgroundPosition = v =>
    declaration(property, value(v));
  let backgroundPosition2 = (v1, v2) =>
    declaration(property, value2(v1, v2));
  let backgroundPosition3 = (v1, v2, v3) =>
    declaration(property, value3(v1, v2, v3));
  let backgroundPosition4 = (v1, v2, v3, v4) =>
    declaration(property, value4(v1, v2, v3, v4));
  let backgroundPositionUnion = v =>
    declaration(property, v);
  let backgroundPositionString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  let backgroundPositionFn = v => declarationFn(property, v);
};