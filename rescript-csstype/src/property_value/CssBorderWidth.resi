type t;
external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssValueType.lineWidth_global => t;
let value2: (~tb: CssValueType.lineWidth, ~lr: CssValueType.lineWidth) => t;
let value3: (
  ~top: CssValueType.lineWidth, 
  ~lr: CssValueType.lineWidth, 
  ~bottom: CssValueType.lineWidth
) => t;
let value4: (
  ~top: CssValueType.lineWidth, 
  ~right: CssValueType.lineWidth, 
  ~bottom: CssValueType.lineWidth, 
  ~left: CssValueType.lineWidth
) => t;