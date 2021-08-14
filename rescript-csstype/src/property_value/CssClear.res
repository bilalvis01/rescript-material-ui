type t;
external string: string => t = "%identity";
let value = v => CssValueString.clear_global(v)->string;