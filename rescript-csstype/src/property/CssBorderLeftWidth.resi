module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideWidth.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderLeftWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.t ];
    let borderLeftWidthUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderLeftWidthString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderLeftWidthFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};