let property = "borderRightWidth";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssBorderSideWidth.Make({ type t = Type.t; });

  module DeclarationHelper = {
    let borderRightWidth = v => 
      #Declaration(property, D.BoxValue(value(v)));
    let borderRightWidthUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let borderRightWidthString = v => 
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderRightWidthFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};