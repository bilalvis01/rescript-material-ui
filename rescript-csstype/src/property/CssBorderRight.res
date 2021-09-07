let property = "borderRight";

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
    let borderRight = (~width=?, ~color=?, style) => 
      #Declaration(property, D.BoxValue(value(~width=?width, ~color=?color, style)));
    let borderRightUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let borderRightString = v => 
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderRightFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};