type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginBottom: CssType.Property.margin<CssType.Syntax.d<'a>>;
  let marginBottomUnion: t => CssType.Syntax.d<'a>;
  let marginBottomString: string => CssType.Syntax.d<'a>;
  let marginBottomNumber: float => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let marginBottomFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};