type t;

let property = "marginRight";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssMarginSide.MakeValue({ type t = t });

module DeclarationHelper = {
  let marginRight = v =>
    #Declaration(property, D.BoxValue(value(v)));
  let marginRightUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let marginRightString = v =>
    #Declaration(property, D.BoxValue(string(v)));
  let marginRightNumber = v =>
    #Declaration(property, D.BoxValue(number(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let marginRightFn = v => #DeclarationFn(property, DF.BoxValue(v));
};