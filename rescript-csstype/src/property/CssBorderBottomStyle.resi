type t;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.t ];
  let borderBottomStyleUnion: t => [> CssDeclarationConstructor.t ];
  let borderBottomStyleString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderBottomStyleFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};