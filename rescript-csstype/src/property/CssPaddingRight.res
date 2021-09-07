let property = "paddingRight";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssPaddingSide.Make({ type t = Type.t; });

  module DeclarationHelper = {
    let paddingRight = v =>
      #Declaration(property, D.BoxValue(value(v)));
    let paddingRightUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let paddingRightString = v =>
      #Declaration(property, D.BoxValue(string(v)));
    let paddingRightNumber = v =>
      #Declaration(property, D.BoxValue(number(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let paddingRightFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};