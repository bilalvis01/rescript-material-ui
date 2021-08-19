type declaration<'data> = [ 
  | CssDeclarationConstructor.t 
  | CssDeclarationFnConstructor.t<'data> 
];

type t<'data> = [
  | #Important(declaration<'data>)
];