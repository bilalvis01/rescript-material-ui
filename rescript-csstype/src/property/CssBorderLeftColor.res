let property = "borderLeftColor";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssBorderSideColor.Make({ type t = Type.t; });

  module DeclarationHelper = {
    let borderLeftColor = v => 
      #Declaration(property, D.BoxValue(value(v)));
    let borderLeftColorUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let borderLeftColorString = v => 
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderLeftColorFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};