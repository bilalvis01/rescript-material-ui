module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderValue.Make({ type t = Type.t }));

  module DeclarationHelper: {
    let borderLeft: (
      ~width: CssValueType.lineWidth=?, 
      ~color: CssValueType.color=?, 
      CssValueType.lineStyle_global
    ) => [> CssDeclarationConstructor.t ];
    let borderLeftUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderLeftString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderLeftFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
}