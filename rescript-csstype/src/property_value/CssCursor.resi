type t;
external string: string => t = "%identity";
let value: CssValueType.cursorKeyword_global => t;
let value1: (CssValueType.cursorImage, CssValueType.cursorKeyword) => t;
let value2: (CssValueType.cursorImage, CssValueType.cursorImage, CssValueType.cursorKeyword) => t;
let value3: (
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => t;
let value4: (
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorImage, 
  CssValueType.cursorKeyword
) => t;