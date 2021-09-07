module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssMarginSide.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let marginTop: CssValueType.margin_global => [> CssDeclarationConstructor.t ];
    let marginTopUnion: Type.t => [> CssDeclarationConstructor.t ];
    let marginTopString: string => [> CssDeclarationConstructor.t ];
    let marginTopNumber: float => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let marginTopFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};