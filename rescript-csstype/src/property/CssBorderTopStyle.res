type t;

let property = "borderTopStyle";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssBorderSideStyle.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderTopStyle = v => 
    #Declaration(property, D.BoxValue(value(v)));
  let borderTopStyleUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let borderTopStyleString = v => 
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderTopStyleFn = v => #DeclarationFn(property, DF.BoxValue(v));
};