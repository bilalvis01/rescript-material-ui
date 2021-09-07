let property = "borderColor";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value = v => CssValueString.color_global(v)->string;
  let value2 = (~tb, ~lr) => `${CssValueString.color(tb)} ${CssValueString.color(lr)}`->string;
  let value3 = (~top, ~lr, ~bottom) => 
    `${CssValueString.color(top)} ${CssValueString.color(lr)} ${CssValueString.color(bottom)}`->string;
  let value4 = (~top, ~right, ~bottom, ~left) =>
    `${CssValueString.color(top)} ${CssValueString.color(right)} ${CssValueString.color(bottom)} ${CssValueString.color(left)}`
    ->string;

  module DeclarationHelper = {
    let borderColor = v => 
      #Declaration(property, D.BoxValue(value(v)));
    let borderColor2 = (~tb, ~lr) => 
      #Declaration(property, D.BoxValue(value2(~tb, ~lr)));
    let borderColor3 = (~top, ~lr, ~bottom) =>
      #Declaration(property, D.BoxValue(value3(~top, ~lr, ~bottom)));
    let borderColor4 = (~top, ~right, ~bottom, ~left) =>
      #Declaration(property, D.BoxValue(value4(~top, ~right, ~bottom, ~left)));
    let borderColorUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let borderColorString = v => 
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderColorFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};