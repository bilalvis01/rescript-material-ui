module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssMarginSide.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let marginRight: CssValueType.margin_global => [> CssDeclarationConstructor.t ];
    let marginRightUnion: Type.t => [> CssDeclarationConstructor.t ];
    let marginRightString: string => [> CssDeclarationConstructor.t ];
    let marginRightNumber: float => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let marginRightFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};