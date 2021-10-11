type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingRight: CssType.padding<CssDeclaration.d<'a>>;
  let paddingRightUnion: t => CssDeclaration.d<'a>;
  let paddingRightString: string => CssDeclaration.d<'a>;
  let paddingRightNumber: float => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let paddingRightFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};