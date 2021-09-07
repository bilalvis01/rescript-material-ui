let property = "color";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value = v => CssValueString.color_global(v)->string;

  module DeclarationHelper = {
    let color = v =>
      #Declaration(property, D.BoxValue(value(v)));
    let colorUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let colorString = v =>
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let colorFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};