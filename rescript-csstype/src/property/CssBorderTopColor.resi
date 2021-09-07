module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideColor.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderTopColor: CssValueType.color_global => [> CssDeclarationConstructor.t ];
    let borderTopColorUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderTopColorString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper)
    let borderTopColorFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};