type t;

let property = "borderRightStyle";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssBorderSideStyle.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderRightStyle = v => 
    #Declaration(property, D.BoxValue(value(v)));
  let borderRightStyleUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let borderRightStyleString = v => 
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderRightStyleFn = v => #DeclarationFn(property, DF.BoxValue(v));
};