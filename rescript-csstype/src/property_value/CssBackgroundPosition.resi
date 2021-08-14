type t;
external string: string => t = "%identity";
let value: CssValueType.position => t;
let value2: (CssValueType.position, CssValueType.position) => t;
let value3: (CssValueType.position, CssValueType.position, CssValueType.position) => t;
let value4: (
  CssValueType.position, 
  CssValueType.position, 
  CssValueType.position, 
  CssValueType.position
) => t;