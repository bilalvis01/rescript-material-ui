type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginRight: CssType.Property.margin<CssType.d<'a>>;
  let marginRightUnion: t => CssType.d<'a>;
  let marginRightString: string => CssType.d<'a>;
  let marginRightNumber: float => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let marginRightFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};