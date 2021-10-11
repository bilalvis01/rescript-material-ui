type styleDeclaration<'data> = [
  | CssType.styleDeclaration<'data>
  | CssJssImportant.constructor<'data>
];

let make: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>;