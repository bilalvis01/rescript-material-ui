type tag;
type t = CssValueType.propertyValue<tag>;

external string: string => t = "%identity";
external number: float => t = "%identity";
external integer: int => t = "%identity";