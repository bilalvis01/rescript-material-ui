module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideColor.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderLeftColor: CssValueType.color_global => [> CssDeclarationConstructor.t ];
    let borderLeftColorUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderLeftColorString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper)
    let borderLeftColorFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};