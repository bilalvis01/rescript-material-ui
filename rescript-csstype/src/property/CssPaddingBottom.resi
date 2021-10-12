type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingBottom: CssType.Property.padding<CssType.d<'a>>;
  let paddingBottomUnion: t => CssType.d<'a>;
  let paddingBottomString: string => CssType.d<'a>;
  let paddingBottomNumber: float => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let paddingBottomFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};