type styleRule<'data> = [
  | CssType.Syntax.styleRule<'data>
];

let make: array<styleRule<'data>> => CssType.statements<'data>;