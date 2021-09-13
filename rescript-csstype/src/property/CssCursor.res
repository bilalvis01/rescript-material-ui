type t;

let property = "cursor";

module D = CssDeclarationConstructor;
module DF = CssDeclarationFnConstructor;

external string: string => t = "%identity";
let value = v => CssValueString.cursorKeyword_global(v)->string;
let value1 = (i, k) =>
  `${CssValueString.cursorImage(i)}, ${CssValueString.cursorKeyword(k)}`
  ->string;
let value2 = (i1, i2, k) =>
  `${CssValueString.cursorImage(i1)}, ${CssValueString.cursorImage(i2)}, ${CssValueString.cursorKeyword(k)}`
  ->string;
let value3 = (i1, i2, i3, k) =>
  `${CssValueString.cursorImage(i1)}, ${CssValueString.cursorImage(i2)}, ${CssValueString.cursorImage(i3)}, ${CssValueString.cursorKeyword(k)}`
  ->string;
let value4 = (i1, i2, i3, i4, k) =>
  `${CssValueString.cursorImage(i1)}, ${CssValueString.cursorImage(i2)}, ${CssValueString.cursorImage(i3)}, ${CssValueString.cursorImage(i4)}, ${CssValueString.cursorKeyword(k)}`
  ->string;

module DeclarationHelper = {
  let cursor = v =>
    #Declaration(property, D.BoxValue(value(v)));
  let cursor1 = (i, k) =>
    #Declaration(property, D.BoxValue(value1(i, k)));
  let cursor2 = (i1, i2, k) =>
    #Declaration(property, D.BoxValue(value2(i1, i2, k)));
  let cursor3 = (i1, i2, i3, k) =>
    #Declaration(property, D.BoxValue(value3(i1, i2, i3, k)));
  let cursor4 = (i1, i2, i3, i4, k) =>
    #Declaration(property, D.BoxValue(value4(i1, i2, i3, i4, k)));
  let cursorUnion = v =>
    #Declaration(property, D.BoxValue(v));
  let cursorString = v =>
    #Declaration(property, D.BoxValue(string(v)));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let cursorFn = v => #DeclarationFn(property, DF.BoxValue(v));
};