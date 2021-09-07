let property = "marginLeft";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssMarginSide.Make({ type t = Type.t });

  module DeclarationHelper = {
    let marginLeft = v =>
      #Declaration(property, D.BoxValue(value(v)));
    let marginLeftUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let marginLeftString = v =>
      #Declaration(property, D.BoxValue(string(v)));
    let marginLeftNumber = v =>
      #Declaration(property, D.BoxValue(number(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let marginLeftFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};