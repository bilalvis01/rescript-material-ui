@unboxed
type rec boxDescriptors =
  | BoxDescriptors('a): boxDescriptors;

module Make: () => {
  type t = (string, boxDescriptors);
  let make: CssAtRuleConstructor.t => t;
};