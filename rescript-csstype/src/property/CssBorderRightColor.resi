type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightColor: CssValueType.color_global => [> CssDeclaration.constructor ];
  let borderRightColorUnion: t => [> CssDeclaration.constructor ];
  let borderRightColorString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderRightColorFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};