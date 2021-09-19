type rule<'a>;

@unboxed
type rec boxRule =
  | BoxRule(rule<'a>): boxRule;

type constructor = [
  | #AtRule(string, boxRule)
];

type t = (string, boxRule);
  
let make: constructor => t;

module Helper: {
  let atRule: (string, rule<'a>) => [> constructor ];
};