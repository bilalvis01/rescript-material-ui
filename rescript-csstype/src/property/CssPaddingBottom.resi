type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingBottom: CssType.Property.padding<CssType.Syntax.d<'a>>;
  let paddingBottomUnion: t => CssType.Syntax.d<'a>;
  let paddingBottomString: string => CssType.Syntax.d<'a>;
  let paddingBottomNumber: float => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let paddingBottomFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};