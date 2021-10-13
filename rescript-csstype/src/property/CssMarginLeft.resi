type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginLeft: CssType.Property.margin<CssType.Syntax.d<'a>>;
  let marginLeftUnion: t => CssType.Syntax.d<'a>;
  let marginLeftString: string => CssType.Syntax.d<'a>;
  let marginLeftNumber: float => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let marginLeftFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};