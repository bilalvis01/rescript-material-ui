type t;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopColor: CssValueType.color_global => [> CssDeclarationConstructor.t ];
  let borderTopColorUnion: t => [> CssDeclarationConstructor.t ];
  let borderTopColorString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper)
  let borderTopColorFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};