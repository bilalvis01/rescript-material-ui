open CssDeclaration.Helper;
open CssDeclarationFn.Helper;

type tag;
type t = CssValueType.propertyValue<tag>;

let property = "cursor";

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
    declaration(property, value(v));
  let cursor1 = (i, k) =>
    declaration(property, value1(i, k));
  let cursor2 = (i1, i2, k) =>
    declaration(property, value2(i1, i2, k));
  let cursor3 = (i1, i2, i3, k) =>
    declaration(property, value3(i1, i2, i3, k));
  let cursor4 = (i1, i2, i3, i4, k) =>
    declaration(property, value4(i1, i2, i3, i4, k));
  let cursorUnion = v =>
    declaration(property, v);
  let cursorString = v =>
    declaration(property, string(v));
};

module DeclarationFnHelper = {
  include DeclarationHelper;
  let cursorFn = v => declarationFn(property, v);
};