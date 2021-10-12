type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginBottom: CssType.Property.margin<CssType.d<'a>>;
  let marginBottomUnion: t => CssType.d<'a>;
  let marginBottomString: string => CssType.d<'a>;
  let marginBottomNumber: float => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let marginBottomFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};