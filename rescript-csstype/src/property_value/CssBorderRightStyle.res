type t;
external string: string => t = "%identity";
let value = v => CssValueString.lineStyle_global(v)->string;