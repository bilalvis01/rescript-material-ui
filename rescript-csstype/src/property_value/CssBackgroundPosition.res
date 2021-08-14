type t;
external string: string => t = "%identity";
let value = v => CssValueString.position(v)->string;
let value2 = (v1, v2) => 
  `${CssValueString.position(v1)}, ${CssValueString.position(v2)}`
  ->string;
let value3 = (v1, v2, v3) => 
  `${CssValueString.position(v1)}, ${CssValueString.position(v2)}, ${CssValueString.position(v3)}`
  ->string;
let value4 = (v1, v2, v3, v4) => 
  `${CssValueString.position(v1)}, ${CssValueString.position(v2)}, ${CssValueString.position(v3)}, ${CssValueString.position(v4)}`
  ->string;