let property = "borderWidth";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  external number: float => Type.t = "%identity";
  let value = v => CssValueString.lineWidth_global(v)->string;
  let value2 = (~tb, ~lr) => 
    `${CssValueString.lineWidth(tb)} ${CssValueString.lineWidth(lr)}`->string;
  let value3 = (~top, ~lr, ~bottom) =>
    `${CssValueString.lineWidth(top)} ${CssValueString.lineWidth(lr)} ${CssValueString.lineWidth(bottom)}`
    ->string;
  let value4 = (~top, ~right, ~bottom, ~left) =>
    `${CssValueString.lineWidth(top)} ${CssValueString.lineWidth(right)} ${CssValueString.lineWidth(bottom)} ${CssValueString.lineWidth(left)}`
    ->string;

  module DeclarationHelper = {
    let borderWidth = v => 
      #Declaration(property, D.BoxValue(value(v)));
    let borderWidth2 = (~tb, ~lr) => 
      #Declaration(property, D.BoxValue(value2(~tb, ~lr)));
    let borderWidth3 = (~top, ~lr, ~bottom) =>
      #Declaration(property, D.BoxValue(value3(~top, ~lr, ~bottom)));
    let borderWidth4 = (~top, ~right, ~bottom, ~left) =>
      #Declaration(property, D.BoxValue(value4(~top, ~right, ~bottom, ~left)));
    let borderWidthUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let borderWidthString = v => 
      #Declaration(property, D.BoxValue(string(v)));
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let borderWidthFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};