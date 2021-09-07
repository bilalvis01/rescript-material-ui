module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderValue.Make({ type t = Type.t }));

  module DeclarationHelper: {
    let borderBottom: (
      ~width: CssValueType.lineWidth=?, 
      ~color: CssValueType.color=?, 
      CssValueType.lineStyle_global
    ) => [> CssDeclarationConstructor.t ];
    let borderBottomUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderBottomString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderBottomFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
}