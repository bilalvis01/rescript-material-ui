type t;

let property = "borderLeftStyle";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssBorderSideStyle.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderLeftStyle = v => 
    #Declaration(property, D.BoxValue(value(v)));
  let borderLeftStyleUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let borderLeftStyleString = v => 
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderLeftStyleFn = v => #DeclarationFn(property, DF.BoxValue(v));
};