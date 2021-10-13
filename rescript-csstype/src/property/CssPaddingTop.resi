type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingTop: CssType.Property.padding<CssType.Syntax.d<'a>>;
  let paddingTopUnion: t => CssType.Syntax.d<'a>;
  let paddingTopString: string => CssType.Syntax.d<'a>;
  let paddingTopNumber: float => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let paddingTopFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};