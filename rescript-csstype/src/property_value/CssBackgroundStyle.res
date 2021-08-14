type t;
external string: string => t = "%identity";
let value = v => CssValueString.repeatStyle(v)->string;
let value2 = (v1, v2) => 
  `${CssValueString.repeatStyle(v1)}, ${CssValueString.repeatStyle(v2)}`
  ->string;
let value3 = (v1, v2, v3) => 
  `${CssValueString.repeatStyle(v1)}, ${CssValueString.repeatStyle(v2)}, ${CssValueString.repeatStyle(v3)}`
  ->string;
let value4 = (v1, v2, v3, v4) => 
  `${CssValueString.repeatStyle(v1)}, ${CssValueString.repeatStyle(v2)}, ${CssValueString.repeatStyle(v3)}, ${CssValueString.repeatStyle(v4)}`
  ->string;