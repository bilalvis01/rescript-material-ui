let property = "border";

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
    let border = (~width=?, ~color=?, style) => 
      #Declaration(property, D.BoxValue(value(~width=?width, ~color=?color, style)));
    let borderUnion = v => 
      #Declaration(property, D.BoxValue(v));
    let borderString = v => 
      #Declaration(property, D.BoxValue(string(v)));

    /*
    let borderTop = (~width=?, ~color=?, style) => 
      #Declaration(value(~width=?width, ~color=?color, style));
    let borderTopUnion = v =>
      #Declaration(v);
    let borderTopString = v => 
      #Declaration(string(v));

    let borderLeft = (~width=?, ~color=?, style) => 
      #Declaration(value(~width=?width, ~color=?color, style));
    let borderLeftUnion = v =>
      #Declaration(v);
    let borderLeftString = v => 
      #Declaration(string(v));

    let borderRight = (~width=?, ~color=?, style) => 
      #Declaration(value(~width=?width, ~color=?color, style));
    let borderRightUnion = v =>
      #Declaration(v);
    let borderRightString = v => 
      #Declaration(string(v));

    let borderBottom = (~width=?, ~color=?, style) => 
      #Declaration(value(~width=?width, ~color=?color, style));
    let borderBottomUnion = v =>
      #Declaration(v);
    let borderBottomString = v => 
      #Declaration(string(v));
    */
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderFn = v => #DeclarationFn(property, DF.BoxValue(v));
    /*
    let borderTopFn = v => #DeclarationFn(v);
    let borderLeftFn = v => #DeclarationFn(v);
    let borderRightFn = v => #DeclarationFn(v);
    let borderBottomFn = v => #DeclarationFn(v);
    */
  };
};