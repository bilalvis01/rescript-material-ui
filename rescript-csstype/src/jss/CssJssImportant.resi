type declaration<'data> = [ 
  | CssDeclaration.constructor 
  | CssDeclarationFn.constructor<'data> 
];

type constructor<'data> = [
  | #Important(declaration<'data>)
];

module Make: (
  Type: {
    type value<'data>;
  } 
) => {
  type t<'data> = (string, Type.value<'data>);

  let make: constructor<'data> => t<'data>;
};

module Helper: {
  let important: declaration<'data> => [> constructor<'data> ];
};