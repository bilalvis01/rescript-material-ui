module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssMarginSide.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let marginLeft: CssValueType.margin_global => [> CssDeclarationConstructor.t ];
    let marginLeftUnion: Type.t => [> CssDeclarationConstructor.t ];
    let marginLeftString: string => [> CssDeclarationConstructor.t ];
    let marginLeftNumber: float => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let marginLeftFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};