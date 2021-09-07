module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideStyle.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderBottomStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.t ];
    let borderBottomStyleUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderBottomStyleString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderBottomStyleFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};