type t;

let property = "borderBottomColor";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderBottomColor = v => 
    #Declaration(property, D.BoxValue(value(v)));
  let borderBottomColorUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let borderBottomColorString = v => 
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderBottomColorFn = v => #DeclarationFn(property, DF.BoxValue(v));
};