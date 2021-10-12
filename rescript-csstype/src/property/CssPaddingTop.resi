type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingTop: CssType.Property.padding<CssDeclaration.d<'a>>;
  let paddingTopUnion: t => CssDeclaration.d<'a>;
  let paddingTopString: string => CssDeclaration.d<'a>;
  let paddingTopNumber: float => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let paddingTopFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};