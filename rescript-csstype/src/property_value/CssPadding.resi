type t;
external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssValueType.padding_global => t;
let value2: (~tb: CssValueType.padding, ~lr: CssValueType.padding) => t;
let value3: (~top: CssValueType.padding, ~lr: CssValueType.padding, ~bottom: CssValueType.padding) => t;
let value4: (
  ~top: CssValueType.padding, 
  ~right: CssValueType.padding, 
  ~bottom: CssValueType.padding, 
  ~left: CssValueType.padding
) => t;