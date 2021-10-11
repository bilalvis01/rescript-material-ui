type styleRule<'data> = [
  | CssType.styleRule<'data>
];

let make: array<styleRule<'data>> => CssType.statements<'data>;