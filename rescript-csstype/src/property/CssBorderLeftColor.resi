type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftColor: CssType.Property.borderColor<CssType.d<'a>>;
  let borderLeftColorUnion: t => CssType.d<'a>;
  let borderLeftColorString: string => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftColorFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};