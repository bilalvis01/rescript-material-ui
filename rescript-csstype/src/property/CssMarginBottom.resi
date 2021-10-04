type tag;
type t = CssType.propertyValue<tag>;
type d<'a> = [> CssDeclaration.constructor ] as 'a;
type dFn<'a, 'data> = [> CssDeclarationFn.constructor<'data> ] as 'a;

include (module type of CssMarginSide.MakeValue({ type t = t; }));

module DeclarationHelper: {
  let marginBottom: CssType.margin<d<'a>>;
  let marginBottomUnion: t => d<'a>;
  let marginBottomString: string => d<'a>;
  let marginBottomNumber: float => d<'a>;
};

module DeclarationFnHelper: {
  let marginBottomFn: ('data => option<t>) => dFn<'a, 'data>;
};