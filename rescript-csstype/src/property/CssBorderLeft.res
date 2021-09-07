let property = "borderLeft";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  include CssBorderValue.Make({
    type t = Type.t;
  });

  module DeclarationHelper = {
    let borderLeft = (~width=?, ~color=?, style) => 
      #Declaration(property, D.BoxValue(value(~width=?width, ~color=?color, style)));
    let borderLeftUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let borderLeftString = v => 
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderLeftFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};