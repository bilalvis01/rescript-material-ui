type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomColor: CssValueType.color_global => [> CssDeclaration.constructor ];
  let borderBottomColorUnion: t => [> CssDeclaration.constructor ];
  let borderBottomColorString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderBottomColorFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};