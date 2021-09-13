type t;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.t ];
  let borderBottomWidthUnion: t => [> CssDeclarationConstructor.t ];
  let borderBottomWidthString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderBottomWidthFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};