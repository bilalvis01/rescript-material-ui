module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssPaddingSide.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let paddingRight: CssValueType.padding_global => [> CssDeclarationConstructor.t ];
    let paddingRightUnion: Type.t => [> CssDeclarationConstructor.t ];
    let paddingRightString: string => [> CssDeclarationConstructor.t ];
    let paddingRightNumber: float => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let paddingRightFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};