let property = "borderBottomStyle";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssBorderSideStyle.Make({ type t = Type.t; });

  module DeclarationHelper = {
    let borderBottomStyle = v => 
      #Declaration(property, D.BoxValue(value(v)));
    let borderBottomStyleUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let borderBottomStyleString = v => 
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderBottomStyleFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};