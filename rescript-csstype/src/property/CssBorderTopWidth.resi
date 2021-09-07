module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideWidth.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderTopWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.t ];
    let borderTopWidthUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderTopWidthString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderTopWidthFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};