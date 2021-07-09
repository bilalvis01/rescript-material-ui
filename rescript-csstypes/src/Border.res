type tag;
type t = Value.synthetic<tag>;
external string: string => t = "%identity";
let make = v => Stringify.border(v)->string;
let make2 = (v1, v2) => 
  v1
  ->Combinator.concat(v2)
  ->Stringify.border
  ->string;
let make3 = (v1, v2, v3) =>
  v1
  ->Combinator.concat(v2)
  ->Combinator.concat(v3)
  ->Stringify.border
  ->string;