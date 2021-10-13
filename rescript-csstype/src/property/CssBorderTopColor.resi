type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopColor: CssType.Property.borderColor<CssType.Syntax.d<'a>>;
  let borderTopColorUnion: t => CssType.Syntax.d<'a>;
  let borderTopColorString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopColorFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};