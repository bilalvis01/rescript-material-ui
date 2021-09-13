type t;

let property = "borderLeft";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssBorder.MakeValue({
  type t = t;
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