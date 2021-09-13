type t;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.t ];
  let borderTopWidthUnion: t => [> CssDeclarationConstructor.t ];
  let borderTopWidthString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderTopWidthFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};