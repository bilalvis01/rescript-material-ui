type t;

let property = "backgroundStyle";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

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
    #Declaration(property, D.BoxValue(value(v)));
  let backgroundStyle2 = (v1, v2) =>
    #Declaration(property, D.BoxValue(value2(v1, v2)));
  let backgroundStyle3 = (v1, v2, v3) =>
    #Declaration(property, D.BoxValue(value3(v1, v2, v3)));
  let backgroundStyle4 = (v1, v2, v3, v4) =>
    #Declaration(property, D.BoxValue(value4(v1, v2, v3, v4)));
  let backgroundStyleUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let backgroundStyleString = v =>
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let backgroundStyleFn = v => #DeclarationFn(property, DF.BoxValue(v));
};
