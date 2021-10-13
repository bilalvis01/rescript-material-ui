type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssBorderSideColor.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let borderBottomColor: CssType.Property.borderColor<CssType.Syntax.d<'a>>;
  let borderBottomColorUnion: t => CssType.Syntax.d<'a>;
  let borderBottomColorString: string => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let borderBottomColorFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};