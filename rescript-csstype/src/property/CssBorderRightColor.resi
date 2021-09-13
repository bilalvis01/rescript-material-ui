type t;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightColor: CssValueType.color_global => [> CssDeclarationConstructor.t ];
  let borderRightColorUnion: t => [> CssDeclarationConstructor.t ];
  let borderRightColorString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper)
  let borderRightColorFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};