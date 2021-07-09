open Type;

type tag;  
type t = Value.synthetic<tag>;
let make: border => t;
let make2: (border, border) => t;
let make3: (border, border, border) => t;