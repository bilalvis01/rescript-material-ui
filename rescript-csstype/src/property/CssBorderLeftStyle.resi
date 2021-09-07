module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideStyle.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderLeftStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.t ];
    let borderLeftStyleUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderLeftStyleString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderLeftStyleFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};