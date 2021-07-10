open Type;

type property;
type t;

external number: float => property = "%identity";
external int: int => property = "%identity";
external string: string => property = "%identity";

let make: (string, property) => t;

let border: border => t;
let borderTop: border => t;
let borderLeft: border => t;
let borderRight: border => t;
let borderBottom: border => t;