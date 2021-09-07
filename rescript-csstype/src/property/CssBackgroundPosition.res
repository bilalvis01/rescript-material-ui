let property = "backgroundPosition";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
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
      #Declaration(property, D.BoxValue(value(v)));
    let backgroundPosition2 = (v1, v2) =>
      #Declaration(property, D.BoxValue(value2(v1, v2)));
    let backgroundPosition3 = (v1, v2, v3) =>
      #Declaration(property, D.BoxValue(value3(v1, v2, v3)));
    let backgroundPosition4 = (v1, v2, v3, v4) =>
      #Declaration(property, D.BoxValue(value4(v1, v2, v3, v4)));
    let backgroundPositionUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let backgroundPositionString = v =>
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let backgroundPositionFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};