type t;

let property = "borderTopWidth";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssBorderSideWidth.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderTopWidth = v => 
    #Declaration(property, D.BoxValue(value(v)));
  let borderTopWidthUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let borderTopWidthString = v => 
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderTopWidthFn = v => #DeclarationFn(property, DF.BoxValue(v));
};