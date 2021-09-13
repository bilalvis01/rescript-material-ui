type t;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.t ];
  let borderTopStyleUnion: t => [> CssDeclarationConstructor.t ];
  let borderTopStyleString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderTopStyleFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};