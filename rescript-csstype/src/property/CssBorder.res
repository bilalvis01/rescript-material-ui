type t;

let property = "border";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

module MakeValue = (
  Type: {
    type t;
  }
) => {
  external string: string => Type.t = "%identity";
  let value = (~width=?, ~color=?, style) => {
    let border = switch (width, color) {
    | (None, None) => None
    | (Some(w), None) => Some(CssValueString.lineWidth(w))
    | (None, Some(c)) => Some(CssValueString.color(c))
    | (Some(w), Some(c)) => Some(`${CssValueString.lineWidth(w)} ${CssValueString.color(c)}`)
    };
    switch (border, style) {
    | (_, #...CssValueType.global as g) => CssValueString.global(g)
    | (None, #...CssValueType.lineStyle as s) => CssValueString.lineStyle(s)
    | (Some(b), #...CssValueType.lineStyle as s) => `${b} ${CssValueString.lineStyle(s)}`
    }
    ->string
  };
};

include MakeValue({
  type t = t;
});

module DeclarationHelper = {
  let border = (~width=?, ~color=?, style) => 
    #Declaration(property, D.BoxValue(value(~width=?width, ~color=?color, style)));
  let borderUnion = v => 
    #Declaration(property, D.BoxValue(v));
  let borderString = v => 
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderFn = v => #DeclarationFn(property, DF.BoxValue(v));
};