module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideColor.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderBottomColor: CssValueType.color_global => [> CssDeclarationConstructor.t ];
    let borderBottomColorUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderBottomColorString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper)
    let borderBottomColorFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};