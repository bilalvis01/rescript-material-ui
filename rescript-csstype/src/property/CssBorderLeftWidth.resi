type t;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.t ];
  let borderLeftWidthUnion: t => [> CssDeclarationConstructor.t ];
  let borderLeftWidthString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderLeftWidthFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};