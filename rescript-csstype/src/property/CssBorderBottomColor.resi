type t;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomColor: CssValueType.color_global => [> CssDeclarationConstructor.t ];
  let borderBottomColorUnion: t => [> CssDeclarationConstructor.t ];
  let borderBottomColorString: string => [> CssDeclarationConstructor.t ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper)
  let borderBottomColorFn: ('data => option<t>) => [> CssDeclarationFnConstructor.t<'data> ];
};