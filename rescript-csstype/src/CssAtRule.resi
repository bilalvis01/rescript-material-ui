@unboxed
type rec boxDescriptors =
  | BoxDescriptors('a): boxDescriptors;

type t = (string, boxDescriptors);
  
let make: CssAtRuleConstructor.t => t;