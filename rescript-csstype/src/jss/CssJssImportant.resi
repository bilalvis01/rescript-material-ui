type declaration<'data> = [ 
  | CssType.Syntax.declaration 
  | CssType.Syntax.declarationFn<'data> 
];

type constructor<'data> = [
  | #Important(declaration<'data>)
];

let make: constructor<'data> => CssType.styleDeclaration<'data>;

module Helper: {
  let important: declaration<'data> => [> constructor<'data> ];
};