type t;

let property = "marginLeft";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

include CssMarginSide.MakeValue({ type t = t });

module DeclarationHelper = {
  let marginLeft = v =>
    #Declaration(property, D.BoxValue(value(v)));
  let marginLeftUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let marginLeftString = v =>
    #Declaration(property, D.BoxValue(string(v)));
  let marginLeftNumber = v =>
    #Declaration(property, D.BoxValue(number(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let marginLeftFn = v => #DeclarationFn(property, DF.BoxValue(v));
};