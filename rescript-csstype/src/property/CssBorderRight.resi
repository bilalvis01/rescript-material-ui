module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderValue.Make({ type t = Type.t }));

  module DeclarationHelper: {
    let borderRight: (
      ~width: CssValueType.lineWidth=?, 
      ~color: CssValueType.color=?, 
      CssValueType.lineStyle_global
    ) => [> CssDeclarationConstructor.t ];
    let borderRightUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderRightString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderRightFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
}