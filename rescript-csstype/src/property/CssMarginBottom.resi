module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssMarginSide.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let marginBottom: CssValueType.margin_global => [> CssDeclarationConstructor.t ];
    let marginBottomUnion: Type.t => [> CssDeclarationConstructor.t ];
    let marginBottomString: string => [> CssDeclarationConstructor.t ];
    let marginBottomNumber: float => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let marginBottomFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};