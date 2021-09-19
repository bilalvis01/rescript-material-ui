type rule<'a>;

@unboxed
type rec boxRule =
  | BoxRule(rule<'a>): boxRule;

type constructor = [
  | #AtRule(string, boxRule)
];

type t = (string, boxRule);

let make = v => {
  switch v {
  | #AtRule(identifier, rule) => (identifier, rule)
  }
};

module Helper = {
  let atRule = (identifier, rule) => #AtRule(identifier, BoxRule(rule));
};