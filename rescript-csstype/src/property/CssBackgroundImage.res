type t

let property = "backgroundImage";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

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
    #Declaration(property, D.BoxValue(value(v)));
  let backgroundImage2 = (v1, v2) =>
    #Declaration(property, D.BoxValue(value2(v1, v2)));
  let backgroundImage3 = (v1, v2, v3) =>
    #Declaration(property, D.BoxValue(value3(v1, v2, v3)));
  let backgroundImage4 = (v1, v2, v3, v4) =>
    #Declaration(property, D.BoxValue(value4(v1, v2, v3, v4)));
  let backgroundImageUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let backgroundImageString = v =>
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let backgroundImageFn = v => #DeclarationFn(property, DF.BoxValue(v));
};