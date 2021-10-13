type styleDeclaration<'data> = [
  CssType.Syntax.styleDeclaration<'data>
];

let make: array<styleDeclaration<'data>> => CssType.declarationBlock<'data>;