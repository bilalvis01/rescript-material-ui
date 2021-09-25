type rule<'a>;

@unboxed
type rec boxRule =
  | BoxRule(rule<'a>): boxRule;

type constructor = [
  | #AtRule(string, boxRule)
];

module Make = (
  At: {
    type value<'data>;
    let map: ((string, boxRule)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, At.value<'data>);
  let { map } = module(At);
  let make = v => {
    switch v {
    | #AtRule(identifier, rule) => (identifier, rule)
    }
    ->map;
  };
};

module Helper = {
  let atRule = (identifier, rule) => #AtRule(identifier, BoxRule(rule));
};