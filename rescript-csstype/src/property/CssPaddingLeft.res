let property = "paddingLeft";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssPaddingSide.Make({ type t = Type.t; });

  module DeclarationHelper = {
    let paddingLeft = v =>
      #Declaration(property, D.BoxValue(value(v)));
    let paddingLeftUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let paddingLeftString = v =>
      #Declaration(property, D.BoxValue(string(v)));
    let paddingLeftNumber = v =>
      #Declaration(property, D.BoxValue(number(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let paddingLeftFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};