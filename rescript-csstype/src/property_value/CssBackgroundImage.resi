type t;
external string: string => t = "%identity";
let value: CssValueType.bgImage => t;
let value2: (CssValueType.bgImage, CssValueType.bgImage) => t;
let value3: (CssValueType.bgImage, CssValueType.bgImage, CssValueType.bgImage) => t;
let value4: (
  CssValueType.bgImage, 
  CssValueType.bgImage, 
  CssValueType.bgImage, 
  CssValueType.bgImage
) => t;