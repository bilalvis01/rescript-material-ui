let property = "marginBottom";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssMarginSide.Make({ type t = Type.t });

  module DeclarationHelper = {
    let marginBottom = v =>
      #Declaration(property, D.BoxValue(value(v)));
    let marginBottomUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let marginBottomString = v =>
      #Declaration(property, D.BoxValue(string(v)));
    let marginBottomNumber = v =>
      #Declaration(property, D.BoxValue(number(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let marginBottomFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};