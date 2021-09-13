type t;

let property = "borderRightColor";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderRightColor = v => 
    #Declaration(property, D.BoxValue(value(v)));
  let borderRightColorUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let borderRightColorString = v => 
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderRightColorFn = v => #DeclarationFn(property, DF.BoxValue(v));
};