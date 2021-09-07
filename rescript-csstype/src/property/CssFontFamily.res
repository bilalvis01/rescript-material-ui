let property = "fontFamily";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
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
      #Declaration(property, D.BoxValue(value(v)));
    let fontFamily2 = (v1, v2) =>
      #Declaration(property, D.BoxValue(value2(v1, v2)));
    let fontFamily3 = (v1, v2, v3) =>
      #Declaration(property, D.BoxValue(value3(v1, v2, v3)));
    let fontFamily4 = (v1, v2, v3, v4) =>
      #Declaration(property, D.BoxValue(value4(v1, v2, v3, v4)));
    let fontFamilyUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let fontFamilyString = v =>
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let fontFamilyFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};  