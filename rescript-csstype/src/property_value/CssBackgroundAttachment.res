type t;
external string: string => t = "%identity";
let value = v => CssValueString.attachment(v)->string;
let value2 = (v1, v2) => 
  `${CssValueString.attachment(v1)}, ${CssValueString.attachment(v2)}`
  ->string;
let value3 = (v1, v2, v3) => 
  `${CssValueString.attachment(v1)}, ${CssValueString.attachment(v2)}, ${CssValueString.attachment(v3)}`
  ->string;
let value4 = (v1, v2, v3, v4) => 
  `${CssValueString.attachment(v1)}, ${CssValueString.attachment(v2)}, ${CssValueString.attachment(v3)}, ${CssValueString.attachment(v4)}`
  ->string;