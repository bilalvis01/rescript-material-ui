module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssPaddingSide.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let paddingTop: CssValueType.padding_global => [> CssDeclarationConstructor.t ];
    let paddingTopUnion: Type.t => [> CssDeclarationConstructor.t ];
    let paddingTopString: string => [> CssDeclarationConstructor.t ];
    let paddingTopNumber: float => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let paddingTopFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};