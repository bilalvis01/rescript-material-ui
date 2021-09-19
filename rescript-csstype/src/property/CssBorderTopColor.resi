type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopColor: CssValueType.color_global => [> CssDeclaration.constructor ];
  let borderTopColorUnion: t => [> CssDeclaration.constructor ];
  let borderTopColorString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderTopColorFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};