let property = "paddingBottom";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssPaddingSide.Make({ type t = Type.t; });

  module DeclarationHelper = {
    let paddingBottom = v =>
      #Declaration(property, D.BoxValue(value(v)));
    let paddingBottomUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let paddingBottomString = v =>
      #Declaration(property, D.BoxValue(string(v)));
    let paddingBottomNumber = v =>
      #Declaration(property, D.BoxValue(number(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let paddingBottomFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};