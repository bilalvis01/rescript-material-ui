module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideWidth.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderBottomWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.t ];
    let borderBottomWidthUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderBottomWidthString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderBottomWidthFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};