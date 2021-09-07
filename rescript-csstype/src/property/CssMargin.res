let property = "margin";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module Make = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  external number: float => Type.t = "%identity";
  /*
  // This is jss' array based syntax
  external numberArray: array<array<float>> => Type.t = "%identity";
  let number2 = (~tb, ~lr) => 
    [[tb, lr]]
    ->numberArray;
  let number3 = (~top, ~lr, ~bottom) => 
    [[top, lr, bottom]]
    ->numberArray;
  let number4 = (~top, ~right, ~bottom, ~left) => 
    [[top, right, bottom, left]]
    ->numberArray;
  */
  let value = v => CssValueString.margin_global(v)->string;
  let value2 = (~tb, ~lr) => 
    `${CssValueString.margin(tb)} ${CssValueString.margin(lr)}`
    ->string;
  let value3 = (~top, ~lr, ~bottom) =>
    `${CssValueString.margin(top)} ${CssValueString.margin(lr)} ${CssValueString.margin(bottom)}`
    ->string;
  let value4 = (~top, ~right, ~bottom, ~left) =>
    `${CssValueString.margin(top)} ${CssValueString.margin(right)} ${CssValueString.margin(bottom)} ${CssValueString.margin(left)}`
    ->string;

  module DeclarationHelper = {
    let margin = v => 
      #Declaration(property, D.BoxValue(value(v)));
    let margin2 = (~tb, ~lr) =>
      #Declaration(property, D.BoxValue(value2(~tb, ~lr)));
    let margin3 = (~top, ~lr, ~bottom) =>
      #Declaration(property, D.BoxValue(value3(~top, ~lr, ~bottom)));
    let margin4 = (~top, ~right, ~bottom, ~left) =>
      #Declaration(property, D.BoxValue(value4(~top, ~right, ~bottom, ~left)));
    let marginUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let marginString = v =>
      #Declaration(property, D.BoxValue(string(v)));
    let marginNumber = v =>
      #Declaration(property, D.BoxValue(number(v)));
    /*
    let margin2Number = (~tb, ~lr) =>
      #Declaration(number2(~tb, ~lr));
    let margin3Number = (~top, ~lr, ~bottom) =>
      #Declaration(number3(~top, ~lr, ~bottom));
    let margin4Number = (~top, ~right, ~bottom, ~left) =>
      #Declaration(number4(~top, ~right, ~bottom, ~left));
    */
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let marginFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};