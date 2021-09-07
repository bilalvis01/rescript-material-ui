let property = "fontWeight";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  external number: float => Type.t = "%identity";
  let value = v => 
    CssValueString.fontWeight_global(v)
    ->string;

  module DeclarationHelper = {
    let fontWeight = v =>
      #Declaration(property, D.BoxValue(value(v)));
    let fontWeightUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let fontWeightString = v =>
      #Declaration(property, D.BoxValue(string(v)));
    let fontWeightNumber = v =>
      #Declaration(property, D.BoxValue(number(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let fontWeightFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};