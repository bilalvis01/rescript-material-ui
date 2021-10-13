type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginRight: CssType.Property.margin<CssType.Syntax.d<'a>>;
  let marginRightUnion: t => CssType.Syntax.d<'a>;
  let marginRightString: string => CssType.Syntax.d<'a>;
  let marginRightNumber: float => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let marginRightFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};