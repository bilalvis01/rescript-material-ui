type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingLeft: CssType.Property.padding<CssType.d<'a>>;
  let paddingLeftUnion: t => CssType.d<'a>;
  let paddingLeftString: string => CssType.d<'a>;
  let paddingLeftNumber: float => CssType.d<'a>;
};

module DeclarationFnHelper: {
  let paddingLeftFn: ('data => option<t>) => CssType.dfn<'a, 'data>;
};