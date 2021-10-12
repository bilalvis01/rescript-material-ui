type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssPaddingSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let paddingBottom: CssType.Property.padding<CssDeclaration.d<'a>>;
  let paddingBottomUnion: t => CssDeclaration.d<'a>;
  let paddingBottomString: string => CssDeclaration.d<'a>;
  let paddingBottomNumber: float => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let paddingBottomFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};