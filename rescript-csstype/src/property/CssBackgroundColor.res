let property = "backgroundColor";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value = v => CssValueString.color(v)->string;

  module DeclarationHelper = {
    let backgroundColor = v =>
      #Declaration(property, D.BoxValue(value(v)));
    let backgroundColorUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let backgroundColorString = v =>
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let backgroundColorFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};