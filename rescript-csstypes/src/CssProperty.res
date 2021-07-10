@unboxed
type rec property =
  | Property('a): property;

type t = (string, property);

external number: float => property = "%identity";
external int: int => property = "%identity";
external string: string => property = "%identity";

let make = (name, value) => (name, value);

let border = v => ("border", Property(v));
let borderTop = v => ("borderTop", Property(v));
let borderLeft = v => ("borderLeft", Property(v));
let borderRight = v => ("borderRight", Property(v));
let borderBottom = v => ("borderBottom", Property(v));