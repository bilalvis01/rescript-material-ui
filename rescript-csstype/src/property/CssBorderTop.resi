module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderValue.Make({ type t = Type.t }));

  module DeclarationHelper: {
    let borderTop: (
      ~width: CssValueType.lineWidth=?, 
      ~color: CssValueType.color=?, 
      CssValueType.lineStyle_global
    ) => [> CssDeclarationConstructor.t ];
    let borderTopUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderTopString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderTopFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
}