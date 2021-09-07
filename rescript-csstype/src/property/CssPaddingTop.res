let property = "paddingTop";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssPaddingSide.Make({ type t = Type.t; });

  module DeclarationHelper = {
    let paddingTop = v =>
      #Declaration(property, D.BoxValue(value(v)));
    let paddingTopUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let paddingTopString = v =>
      #Declaration(property, D.BoxValue(string(v)));
    let paddingTopNumber = v =>
      #Declaration(property, D.BoxValue(number(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let paddingTopFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};