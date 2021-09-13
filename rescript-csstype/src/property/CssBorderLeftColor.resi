type t;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftColor: CssValueType.color_global => [> CssDeclarationConstructor.t ];
  let borderLeftColorUnion: t => [> CssDeclarationConstructor.t ];
  let borderLeftColorString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper)
  let borderLeftColorFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};