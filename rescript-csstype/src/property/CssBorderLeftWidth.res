let property = "borderLeftWidth";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssBorderSideWidth.Make({ type t = Type.t; });

  module DeclarationHelper = {
    let borderLeftWidth = v => 
      #Declaration(property, D.BoxValue(value(v)));
    let borderLeftWidthUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let borderLeftWidthString = v => 
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderLeftWidthFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};