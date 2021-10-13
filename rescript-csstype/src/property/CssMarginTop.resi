type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginTop: CssType.Property.margin<CssType.Syntax.d<'a>>;
  let marginTopUnion: t => CssType.Syntax.d<'a>;
  let marginTopString: string => CssType.Syntax.d<'a>;
  let marginTopNumber: float => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let marginTopFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};