type tag;
type t = CssType.propertyValue<tag>;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginLeft: CssType.margin<CssDeclaration.d<'a>>;
  let marginLeftUnion: t => CssDeclaration.d<'a>;
  let marginLeftString: string => CssDeclaration.d<'a>;
  let marginLeftNumber: float => CssDeclaration.d<'a>;
};

module DeclarationFnHelper: {
  let marginLeftFn: ('data => option<t>) => CssDeclarationFn.d<'a, 'data>;
};