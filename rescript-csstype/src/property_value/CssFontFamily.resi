type t;
external string: string => t = "%identity";
let value: CssValueType.fontFamily_global => t;
let value2: (
  CssValueType.fontFamily, 
  CssValueType.fontFamily,
) => t;
let value3: (
  CssValueType.fontFamily, 
  CssValueType.fontFamily,
  CssValueType.fontFamily,
) => t;
let value4: (
  CssValueType.fontFamily, 
  CssValueType.fontFamily,
  CssValueType.fontFamily,
  CssValueType.fontFamily,
) => t;