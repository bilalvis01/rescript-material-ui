type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginTop: CssType.Property.margin<CssType.d<'a>>;
  let marginTopUnion: t => CssType.d<'a>;
  let marginTopString: string => CssType.d<'a>;
  let marginTopNumber: float => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let marginTopFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};