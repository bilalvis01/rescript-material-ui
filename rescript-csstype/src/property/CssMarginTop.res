type t;

let property = "marginTop";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssMarginSide.MakeValue({ type t = t });

module DeclarationHelper = {
  let marginTop = v =>
    #Declaration(property, D.BoxValue(value(v)));
  let marginTopUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let marginTopString = v =>
    #Declaration(property, D.BoxValue(string(v)));
  let marginTopNumber = v =>
    #Declaration(property, D.BoxValue(number(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let marginTopFn = v => #DeclarationFn(property, DF.BoxValue(v));
};