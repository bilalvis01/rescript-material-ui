type t;

let property = "clear";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

external string: string => t = "%identity";
let value = v => CssValueString.clear_global(v)->string;

module DeclarationHelper = {
  let clear = v => #Declaration(property, D.BoxValue(value(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let clearFn = v => #DeclarationFn(property, DF.BoxValue(v));
};