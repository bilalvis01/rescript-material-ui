type t;
external string: string => t = "%identity";
external number: float => t = "%identity";
let value = v => CssValueString.padding_global(v)->string;