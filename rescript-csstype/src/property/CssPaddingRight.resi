type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingRight: CssType.Property.padding<CssType.Syntax.d<'a>>;
  let paddingRightUnion: t => CssType.Syntax.d<'a>;
  let paddingRightString: string => CssType.Syntax.d<'a>;
  let paddingRightNumber: float => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let paddingRightFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};