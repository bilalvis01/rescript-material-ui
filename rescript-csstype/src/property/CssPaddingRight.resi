type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingRight: CssType.Property.padding<CssType.d<'a>>;
  let paddingRightUnion: t => CssType.d<'a>;
  let paddingRightString: string => CssType.d<'a>;
  let paddingRightNumber: float => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let paddingRightFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};