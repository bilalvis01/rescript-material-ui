let property = "clear";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value = v => CssValueString.clear_global(v)->string;

  module DeclarationHelper = {
    let clear = v => #Declaration(property, D.BoxValue(value(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let clearFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};