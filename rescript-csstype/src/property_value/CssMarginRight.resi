type t;
external string: string => t = "%identity";
external number: float => t = "%identity";
let value: CssValueType.margin_global => t;