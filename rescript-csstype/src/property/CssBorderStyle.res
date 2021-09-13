type t;

external string: string => t = "%identity";
let value = v => CssValueString.lineStyle_global(v)->string;
let value2 = (~tb, ~lr) =>
  `${CssValueString.lineStyle(tb)} ${CssValueString.lineStyle(lr)}`->string;
let value3 = (~top, ~lr, ~bottom) =>
  `${CssValueString.lineStyle(top)} ${CssValueString.lineStyle(lr)} ${CssValueString.lineStyle(bottom)}`
  ->string;
let value4 = (~top, ~right, ~bottom, ~left) =>
  `${CssValueString.lineStyle(top)} ${CssValueString.lineStyle(right)} ${CssValueString.lineStyle(bottom)} ${CssValueString.lineStyle(left)}`
  ->string;

module DeclarationConstructor = {
  type t = [ | #BorderStyle(t) ];
};

module DeclarationFnConstructor = {
  type borderStyle<'data> = [ | #BorderStyleFn('data => option<t>) ];
  type t<'data> = [
    | DeclarationConstructor.t
    | borderStyle<'data>
  ];
};

module DeclarationHelper = {
  let borderStyle = v => 
    #BorderStyle(value(v));
  let borderStyle2 = (~tb, ~lr) => 
    #BorderStyle(value2(~tb, ~lr));
  let borderStyle3 = (~top, ~lr, ~bottom) =>
    #BorderStyle(value3(~top, ~lr, ~bottom));
  let borderStyle4 = (~top, ~right, ~bottom, ~left) =>
    #BorderStyle(value4(~top, ~right, ~bottom, ~left));
  let borderStyleUnion = v =>
    #BorderStyle(v);
  let borderStyleString = v => 
    #BorderStyle(string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let borderStyleFn = v => #BorderStyleFn(v);
};