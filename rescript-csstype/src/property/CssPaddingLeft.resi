type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingLeft: CssType.Property.padding<CssType.Syntax.d<'a>>;
  let paddingLeftUnion: t => CssType.Syntax.d<'a>;
  let paddingLeftString: string => CssType.Syntax.d<'a>;
  let paddingLeftNumber: float => CssType.Syntax.d<'a>;
};

module DeclarationFnHelper: {
  let paddingLeftFn: ('data => option<t>) => CssType.Syntax.dfn<'a, 'data>;
};