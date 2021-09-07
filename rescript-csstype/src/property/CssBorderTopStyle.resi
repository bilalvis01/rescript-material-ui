module Make: (
  Type: {
    type t;
  }
) => {
  include (module type of CssBorderSideStyle.Make({ type t = Type.t; }));

  module DeclarationHelper: {
    let borderTopStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.t ];
    let borderTopStyleUnion: Type.t => [> CssDeclarationConstructor.t ];
    let borderTopStyleString: string => [> CssDeclarationConstructor.t ];
  };

  module DeclarationFnHelper: {
    include (module type of DeclarationHelper);
    let borderTopStyleFn: ('data => option<Type.t>) => [> CssDeclarationFnConstructor.t<'data> ];
  };
};