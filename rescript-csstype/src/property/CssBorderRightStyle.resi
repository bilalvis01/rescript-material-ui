type t;

include (module type of CssBorderSideStyle.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightStyle: CssValueType.lineStyle_global => [> CssDeclarationConstructor.t ];
  let borderRightStyleUnion: t => [> CssDeclarationConstructor.t ];
  let borderRightStyleString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderRightStyleFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};