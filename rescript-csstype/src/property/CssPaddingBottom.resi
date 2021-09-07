module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssPaddingSide.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let paddingBottom: CssValueType.padding_global => [> CssDeclarationConstructor.t ];
    let paddingBottomUnion: Type.t => [> CssDeclarationConstructor.t ];
    let paddingBottomString: string => [> CssDeclarationConstructor.t ];
    let paddingBottomNumber: float => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let paddingBottomFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};