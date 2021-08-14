type t;
external string: string => t = "%identity";
let value = v => CssValueString.bgImage(v)->string;
let value2 = (v1, v2) => 
  `${CssValueString.bgImage(v1)}, ${CssValueString.bgImage(v2)}`
  ->string;
let value3 = (v1, v2, v3) => 
  `${CssValueString.bgImage(v1)}, ${CssValueString.bgImage(v2)}, ${CssValueString.bgImage(v3)}`
  ->string;
let value4 = (v1, v2, v3, v4) => 
  `${CssValueString.bgImage(v1)}, ${CssValueString.bgImage(v2)}, ${CssValueString.bgImage(v3)}, ${CssValueString.bgImage(v4)}`
  ->string;