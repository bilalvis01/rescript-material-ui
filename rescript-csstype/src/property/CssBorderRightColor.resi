module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideColor.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderRightColor: CssValueType.color_global => [> CssDeclarationConstructor.t ];
    let borderRightColorUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderRightColorString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper)
    let borderRightColorFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};