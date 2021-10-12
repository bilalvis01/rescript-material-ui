type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderTopColor: CssType.Property.borderColor<CssType.d<'a>>;
  let borderTopColorUnion: t => CssType.d<'a>;
  let borderTopColorString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderTopColorFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};