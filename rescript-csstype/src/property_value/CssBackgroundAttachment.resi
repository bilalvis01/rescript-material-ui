type t;
external string: string => t = "%identity";
let value: CssValueType.attachment => t;
let value2: (CssValueType.attachment, CssValueType.attachment) => t;
let value3: (CssValueType.attachment, CssValueType.attachment, CssValueType.attachment) => 
  t;
let value4: (
  CssValueType.attachment, 
  CssValueType.attachment, 
  CssValueType.attachment, 
  CssValueType.attachment
) => t;