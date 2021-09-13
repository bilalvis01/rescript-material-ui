type t;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.t ];
  let borderLeftStyleUnion: t => [> CssDeclarationConstructor.t ];
  let borderLeftStyleString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderLeftStyleFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};