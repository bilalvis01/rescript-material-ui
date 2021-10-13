type styleDeclaration<'data> = [
  | CssType.Syntax.styleDeclaration<'data>
  | CssJssImportant.constructor<'data>
];

let make: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>;