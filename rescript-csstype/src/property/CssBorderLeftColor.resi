type tag;
type t = CssValueType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftColor: CssValueType.color_global => [> CssDeclaration.constructor ];
  let borderLeftColorUnion: t => [> CssDeclaration.constructor ];
  let borderLeftColorString: string => [> CssDeclaration.constructor ];
};

module DeclarationFnHelper: {
  let borderLeftColorFn: ('data => option<t>) => [> CssDeclarationFn.constructor<'data> ];
};