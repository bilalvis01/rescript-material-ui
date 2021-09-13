type t;

let property = "backgroundColor";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

external string: string => t = "%identity";
let value = v => CssValueString.color(v)->string;

module DeclarationHelper = {
  let backgroundColor = v =>
    #Declaration(property, D.BoxValue(value(v)));
  let backgroundColorUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let backgroundColorString = v =>
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let backgroundColorFn = v => #DeclarationFn(property, DF.BoxValue(v));
};