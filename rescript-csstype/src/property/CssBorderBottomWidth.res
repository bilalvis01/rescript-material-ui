type t;

let property = "borderBottomWidth";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssBorderSideWidth.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderBottomWidth = v => 
    #Declaration(property, D.BoxValue(value(v)));
  let borderBottomWidthUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let borderBottomWidthString = v => 
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderBottomWidthFn = v => #DeclarationFn(property, DF.BoxValue(v));
};