type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginTop: CssType.margin<CssDeclaration.d<'a>>;
  let marginTopUnion: t => CssDeclaration.d<'a>;
  let marginTopString: string => CssDeclaration.d<'a>;
  let marginTopNumber: float => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let marginTopFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};