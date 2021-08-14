type t;
external string: string => t = "%identity";
let value = v => CssValueString.color_global(v)->string;