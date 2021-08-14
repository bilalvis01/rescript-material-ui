type t;
external string: string => t = "%identity";
let value: CssValueType.lineStyle_global => t;
let value2: (~tb: CssValueType.lineStyle, ~lr: CssValueType.lineStyle) => t;
let value3: (
  ~top: CssValueType.lineStyle, 
  ~lr: CssValueType.lineStyle, 
  ~bottom: CssValueType.lineStyle
) => t;
let value4: (
  ~top: CssValueType.lineStyle, 
  ~right: CssValueType.lineStyle, 
  ~bottom: CssValueType.lineStyle, 
  ~left: CssValueType.lineStyle
) => t;