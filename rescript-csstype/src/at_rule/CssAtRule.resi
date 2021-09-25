type rule<'a>;

@unboxed
type rec boxRule =
  | BoxRule(rule<'a>): boxRule;

type constructor = [
  | #AtRule(string, boxRule)
];

module Make: (
  At: {
    type value<'data>;
    let map: ((string, boxRule)) => (string, value<'data>);
  }
) => {
  type t<'data> = (string, At.value<'data>);
  let make: constructor => t<'data>;
};

module Helper: {
  let atRule: (string, rule<'a>) => [> constructor ];
};