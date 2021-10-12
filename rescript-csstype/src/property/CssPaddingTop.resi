type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingTop: CssType.Property.padding<CssType.d<'a>>;
  let paddingTopUnion: t => CssType.d<'a>;
  let paddingTopString: string => CssType.d<'a>;
  let paddingTopNumber: float => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let paddingTopFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};