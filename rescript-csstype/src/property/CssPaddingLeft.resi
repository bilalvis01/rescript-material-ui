module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssPaddingSide.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let paddingLeft: CssValueType.padding_global => [> CssDeclarationConstructor.t ];
    let paddingLeftUnion: Type.t => [> CssDeclarationConstructor.t ];
    let paddingLeftString: string => [> CssDeclarationConstructor.t ];
    let paddingLeftNumber: float => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let paddingLeftFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};