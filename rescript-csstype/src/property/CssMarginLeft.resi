type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginLeft: CssType.Property.margin<CssType.d<'a>>;
  let marginLeftUnion: t => CssType.d<'a>;
  let marginLeftString: string => CssType.d<'a>;
  let marginLeftNumber: float => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let marginLeftFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};