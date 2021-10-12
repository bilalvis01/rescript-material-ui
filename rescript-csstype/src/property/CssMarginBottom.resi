type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginBottom: CssType.Property.margin<CssDeclaration.d<'a>>;
  let marginBottomUnion: t => CssDeclaration.d<'a>;
  let marginBottomString: string => CssDeclaration.d<'a>;
  let marginBottomNumber: float => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let marginBottomFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};