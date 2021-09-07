module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideStyle.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderRightStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.t ];
    let borderRightStyleUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderRightStyleString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderRightStyleFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};