type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomColor: CssValueType.color_global => [> CssDeclaration.constructor ];
  let borderBottomColorUnion: t => [> CssDeclaration.constructor ];
  let borderBottomColorString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  include (module type of DeclarationHelper)
  let borderBottomColorFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};