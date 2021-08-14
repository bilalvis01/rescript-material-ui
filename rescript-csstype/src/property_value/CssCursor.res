type t;
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