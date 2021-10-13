type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderRightColor: CssType.Property.borderColor<CssType.Syntax.d<'a>>;
  let borderRightColorUnion: t => CssType.Syntax.d<'a>;
  let borderRightColorString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderRightColorFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};