type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginRight: CssType.margin<CssDeclaration.d<'a>>;
  let marginRightUnion: t => CssDeclaration.d<'a>;
  let marginRightString: string => CssDeclaration.d<'a>;
  let marginRightNumber: float => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let marginRightFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};