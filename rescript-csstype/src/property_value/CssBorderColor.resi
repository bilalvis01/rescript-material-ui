type t;
external string: string => t = "%identity";
let value: CssValueType.color_global => t;
let value2: (~tb: CssValueType.color, ~lr: CssValueType.color) => t;
let value3: (
  ~top: CssValueType.color, 
  ~lr: CssValueType.color, 
  ~bottom: CssValueType.color
) => t;
let value4: (
  ~top: CssValueType.color, 
  ~right: CssValueType.color, 
  ~bottom: CssValueType.color, 
  ~left: CssValueType.color
) => t;