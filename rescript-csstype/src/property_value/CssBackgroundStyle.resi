type t;
external string: string => t = "%identity";
let value: CssValueType.repeatStyle => t;
let value2: (CssValueType.repeatStyle, CssValueType.repeatStyle) => t;
let value3: (CssValueType.repeatStyle, CssValueType.repeatStyle, CssValueType.repeatStyle) => t;
let value4: (
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle, 
  CssValueType.repeatStyle
) => t;