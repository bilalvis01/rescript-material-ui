let property = "borderBottomColor";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssBorderSideColor.Make({ type t = Type.t; });

  module DeclarationHelper = {
    let borderBottomColor = v => 
      #Declaration(property, D.BoxValue(value(v)));
    let borderBottomColorUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let borderBottomColorString = v => 
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderBottomColorFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};