let property = "borderBottom";

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
    let borderBottom = (~width=?, ~color=?, style) => 
      #Declaration(property, D.BoxValue(value(~width=?width, ~color=?color, style)));
    let borderBottomUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let borderBottomString = v => 
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderBottomFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};