let property = "padding";

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
  // this is jss' array based syntax
  external numberArray: array<float> => Type.t = "%identity";
  let number2 = (~tb, ~lr) =>
    [tb, lr]
    ->numberArray;
  let number3 = (~top, ~lr, ~bottom) =>
    [top, lr, bottom]
    ->numberArray;
  let number4 = (~top, ~right, ~bottom, ~left) =>
    [top, right, bottom, left]
    ->numberArray;
  */
  let value = v => CssValueString.padding_global(v)->string;
  let value2 = (~tb, ~lr) => 
    `${CssValueString.padding(tb)} ${CssValueString.padding(lr)}`
    ->string;
  let value3 = (~top, ~lr, ~bottom) =>
    `${CssValueString.padding(top)} ${CssValueString.padding(lr)} ${CssValueString.padding(bottom)}`
    ->string;
  let value4 = (~top, ~right, ~bottom, ~left) =>
    `${CssValueString.padding(top)} ${CssValueString.padding(right)} ${CssValueString.padding(bottom)} ${CssValueString.padding(left)}`
    ->string;

  module DeclarationHelper = {
    let padding = v => 
      #Declaration(property, D.BoxValue(value(v)));
    let padding2 = (~tb, ~lr) =>
      #Declaration(property, D.BoxValue(value2(~tb, ~lr)));
    let padding3 = (~top, ~lr, ~bottom) =>
      #Declaration(property, D.BoxValue(value3(~top, ~lr, ~bottom)));
    let padding4 = (~top, ~right, ~bottom, ~left) =>
      #Declaration(property, D.BoxValue(value4(~top, ~right, ~bottom, ~left)));
    let paddingUnion = v =>
      #Declaration(property, D.BoxValue(v));
    let paddingString = v =>
      #Declaration(property, D.BoxValue(string(v)));
    let paddingNumber = v =>
      #Declaration(property, D.BoxValue(number(v)));
    /*
    let padding2Number = (~tb, ~lr) =>
      #Declaration(number2(~tb, ~lr));
    let padding3Number = (~top, ~lr, ~bottom) =>
      #Declaration(number3(~top, ~lr, ~bottom));
    let padding4Number = (~top, ~right, ~bottom, ~left) =>
      #Declaration(number4(~top, ~right, ~bottom, ~left));
    */
  };

  module DeclarationFnHelper = {
    include DeclarationHelper;
    let paddingFn = v => #DeclarationFn(property, DF.BoxValue(v));
  };
};