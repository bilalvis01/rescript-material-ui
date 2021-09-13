type t;

include (module type of CssBorderSideWidth.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightWidth: CssValueType.lineWidth_global => [> CssDeclarationConstructor.t ];
  let borderRightWidthUnion: t => [> CssDeclarationConstructor.t ];
  let borderRightWidthString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper);
  let borderRightWidthFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};