type declaration<'data> = [ 
  | CssType.declaration 
  | CssType.declarationFn<'data> 
];

type constructor<'data> = [
  | #Important(declaration<'data>)
];

let make: constructor<'data> => CssType.styleDeclarationEntry<'data>;

module Helper: {
  let important: declaration<'data> => [> constructor<'data> ];
};