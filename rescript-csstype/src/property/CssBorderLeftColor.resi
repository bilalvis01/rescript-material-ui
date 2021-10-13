type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderLeftColor: CssType.Property.borderColor<CssType.Syntax.d<'a>>;
  let borderLeftColorUnion: t => CssType.Syntax.d<'a>;
  let borderLeftColorString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderLeftColorFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};