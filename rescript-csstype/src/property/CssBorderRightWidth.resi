module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideWidth.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderRightWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.t ];
    let borderRightWidthUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderRightWidthString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderRightWidthFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};