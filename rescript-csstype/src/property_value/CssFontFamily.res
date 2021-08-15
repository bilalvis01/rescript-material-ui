type t;
external string: string => t = "%identity";
let value = v => 
  CssValueString.fontFamily_global(v)
  ->string;
let value2 = (v1, v2) =>
  `${CssValueString.fontFamily(v1)}, ${CssValueString.fontFamily(v2)}`
  ->string;
let value3 = (v1, v2, v3) =>
  `${CssValueString.fontFamily(v1)}, ${CssValueString.fontFamily(v2)}, ${CssValueString.fontFamily(v3)}`
  ->string;
let value4 = (v1, v2, v3, v4) =>
  `${CssValueString.fontFamily(v1)}, ${CssValueString.fontFamily(v2)}, ${CssValueString.fontFamily(v3)}, ${CssValueString.fontFamily(v4)}`
  ->string;