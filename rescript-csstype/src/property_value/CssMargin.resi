type t;
external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssValueType.margin_global => t;
let value2: (~tb: CssValueType.margin, ~lr: CssValueType.margin) => t;
let value3: (~top: CssValueType.margin, ~lr: CssValueType.margin, ~bottom: CssValueType.margin) => t;
let value4: (
  ~top: CssValueType.margin, 
  ~right: CssValueType.margin, 
  ~bottom: CssValueType.margin, 
  ~left: CssValueType.margin
) => t;