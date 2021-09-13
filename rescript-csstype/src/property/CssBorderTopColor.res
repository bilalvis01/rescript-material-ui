type t;

let property = "borderTopColor";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssBorderSideColor.MakeValue({ type t = t; });

module DeclarationHelper = {
  let borderTopColor = v => 
    #Declaration(property, D.BoxValue(value(v)));
  let borderTopColorUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let borderTopColorString = v => 
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderTopColorFn = v => #DeclarationFn(property, DF.BoxValue(v));
};